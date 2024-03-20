package xyz.goblin.utils.common;

import java.util.Base64;


public class Base64Utils {

    /**
     * 解码
     * @param base64
     * @return
     */
    public static byte[] decode(String base64){
        Base64.Decoder decoder = Base64.getDecoder();

        try {
            // Base64解码
            return decoder.decode(base64);
        } catch (Exception e) {
            return null;
        }
    }


    /**
     * 编码
     * @param data
     * @return
     * @throws Exception
     */
    public static String encode(byte[] data) {
        Base64.Encoder encoder = Base64.getEncoder();
        return encoder.encodeToString(data);
    }
}