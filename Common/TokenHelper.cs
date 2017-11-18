using JWT;
using JWT.Algorithms;
using JWT.Serializers;

public class TokenHelper
{
    /// <summary>
    /// 获取Token
    /// </summary>
    /// <param name="model"></param>
    /// <returns></returns>
    public static string GetToken(object model)
    {
        IJwtAlgorithm algorithm = new HMACSHA256Algorithm();
        IJsonSerializer serializer = new JsonNetSerializer();
        IBase64UrlEncoder urlEncoder = new JwtBase64UrlEncoder();
        IJwtEncoder encoder = new JwtEncoder(algorithm, serializer, urlEncoder);
        return encoder.Encode(model, Config.Secret);
    }

    /// <summary>
    /// 解释Token
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="token"></param>
    /// <returns></returns>
    public static T GetModel<T>(string token)
    {
        try
        {
            IJsonSerializer serializer = new JsonNetSerializer();
            IDateTimeProvider provider = new UtcDateTimeProvider();
            IJwtValidator validator = new JwtValidator(serializer, provider);
            IBase64UrlEncoder urlEncoder = new JwtBase64UrlEncoder();
            IJwtDecoder decoder = new JwtDecoder(serializer, validator, urlEncoder);

            return decoder.DecodeToObject<T>(token, Config.Secret, true);
        }
        catch (TokenExpiredException)
        {
            LogHelper.Info("Token has expired");
            return default(T);
        }
        catch (SignatureVerificationException)
        {
            LogHelper.Info("Token has invalid signature");
            return default(T);
        }
    }
}
