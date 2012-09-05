.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .prologue
    .line 1119
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string/jumbo v17, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string/jumbo v17, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string/jumbo v17, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string/jumbo v17, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string/jumbo v17, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string/jumbo v17, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1312
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1445
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1449
    .local v9, r:Landroid/content/res/Resources;
    const-string v15, "TUR"

    const-string/jumbo v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_dd

    const-string v15, "TRC"

    const-string/jumbo v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_192

    .line 1450
    :cond_dd
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1451
    const-string v15, "GSM"

    const-string/jumbo v16, "sEnabledSingleShiftTables sets as Turkey"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_f0
    const v15, 0x1070030

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1457
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v8, v15

    .line 1458
    .local v8, numTables:I
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v7, v15

    .line 1459
    .local v7, numShiftTables:I
    if-eq v8, v7, :cond_127

    .line 1460
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " != shift tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_127
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v15, v15

    if-lez v15, :cond_19d

    .line 1465
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1471
    :goto_13b
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1472
    const/4 v4, 0x0

    .local v4, i:I
    :goto_140
    if-ge v4, v8, :cond_1a4

    .line 1473
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v13, v15, v4

    .line 1475
    .local v13, table:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 1476
    .local v14, tableLen:I
    if-eqz v14, :cond_17c

    const/16 v15, 0x80

    if-eq v14, v15, :cond_17c

    .line 1477
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_17c
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v14}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1482
    .local v2, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v2, v15, v4

    .line 1483
    const/4 v6, 0x0

    .local v6, j:I
    :goto_186
    if-ge v6, v14, :cond_1a1

    .line 1484
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1485
    .local v1, c:C
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1483
    add-int/lit8 v6, v6, 0x1

    goto :goto_186

    .line 1454
    .end local v1           #c:C
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v7           #numShiftTables:I
    .end local v8           #numTables:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_192
    const v15, 0x107002f

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    goto/16 :goto_f0

    .line 1468
    .restart local v7       #numShiftTables:I
    .restart local v8       #numTables:I
    :cond_19d
    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_13b

    .line 1472
    .restart local v2       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v4       #i:I
    .restart local v6       #j:I
    .restart local v13       #table:Ljava/lang/String;
    .restart local v14       #tableLen:I
    :cond_1a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_140

    .line 1489
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_1a4
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1490
    const/4 v4, 0x0

    :goto_1a9
    if-ge v4, v7, :cond_202

    .line 1491
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v10, v15, v4

    .line 1493
    .local v10, shiftTable:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 1494
    .local v11, shiftTableLen:I
    if-eqz v11, :cond_1e5

    const/16 v15, 0x80

    if-eq v11, v15, :cond_1e5

    .line 1495
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language shift tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_1e5
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v11}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1500
    .local v3, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v3, v15, v4

    .line 1501
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_1ef
    if-ge v6, v11, :cond_1ff

    .line 1502
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1503
    .restart local v1       #c:C
    const/16 v15, 0x20

    if-eq v1, v15, :cond_1fc

    .line 1504
    invoke-virtual {v3, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1501
    :cond_1fc
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ef

    .line 1490
    .end local v1           #c:C
    :cond_1ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a9

    .line 1740
    .end local v3           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v10           #shiftTable:Ljava/lang/String;
    .end local v11           #shiftTableLen:I
    :cond_202
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1741
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1742
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1743
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1746
    const/4 v4, 0x0

    .line 1748
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x40

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa3

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x24

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf9

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xec

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1763
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x394

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x393

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39b

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a0

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a3

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x398

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v16, 0xffff

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe6

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x21

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x22

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x23

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa4

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x25

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x26

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x27

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x28

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x29

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x30

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x31

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x32

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x33

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x34

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x35

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x36

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x37

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x38

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1809
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1810
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1812
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x41

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x42

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x43

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x44

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x45

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x46

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x47

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x48

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1825
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x49

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1826
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1827
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1829
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x50

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x51

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x52

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x53

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x54

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x55

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x56

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1840
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x57

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x58

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x59

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1843
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1844
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xbf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x61

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x62

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x63

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x64

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1855
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x65

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1856
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x66

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1857
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x67

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x68

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x69

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1861
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1863
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x70

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1868
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x71

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x72

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x73

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x74

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x75

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x76

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x77

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x78

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x79

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x7a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1878
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xfc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe0

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0xc

    const/16 v17, 0xa

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5e

    const/16 v17, 0x14

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7b

    const/16 v17, 0x28

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7d

    const/16 v17, 0x29

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5c

    const/16 v17, 0x2f

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5b

    const/16 v17, 0x3c

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7e

    const/16 v17, 0x3d

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5d

    const/16 v17, 0x3e

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7c

    const/16 v17, 0x40

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x20ac

    const/16 v17, 0x65

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1917
    .local v12, size:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_801
    if-ge v6, v12, :cond_81b

    .line 1918
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1917
    add-int/lit8 v6, v6, 0x1

    goto :goto_801

    .line 1921
    :cond_81b
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1922
    const/4 v6, 0x0

    :goto_822
    if-ge v6, v12, :cond_83c

    .line 1923
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1922
    add-int/lit8 v6, v6, 0x1

    goto :goto_822

    .line 1926
    :cond_83c
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1927
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 29
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 841
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_82

    .line 842
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 843
    .local v22, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 844
    .local v14, septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_30

    .line 845
    const/16 v22, 0x0

    .line 972
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2f
    :goto_2f
    return-object v22

    .line 847
    .restart local v14       #septets:I
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_30
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 848
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 849
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_6f

    .line 850
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 852
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 858
    :goto_66
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2f

    .line 855
    :cond_6f
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 856
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_66

    .line 862
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_82
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 863
    .local v11, maxSingleShiftCode:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    .local v10, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, arr$:[I
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_a4
    if-ge v7, v8, :cond_c3

    aget v6, v4, v7

    .line 870
    .local v6, i:I
    if-eqz v6, :cond_c0

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_c0

    .line 871
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    .line 875
    .end local v6           #i:I
    :cond_c3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 877
    .local v19, sz:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i:I
    :goto_c8
    move/from16 v0, v19

    if-ge v6, v0, :cond_18a

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_18a

    .line 878
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 879
    .local v5, c:C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_e8

    .line 880
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_e5
    add-int/lit8 v6, v6, 0x1

    goto :goto_c8

    .line 884
    :cond_e8
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_ec
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 885
    .local v9, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 886
    .local v21, tableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_169

    .line 888
    const/16 v20, 0x0

    .local v20, table:I
    :goto_114
    move/from16 v0, v20

    if-gt v0, v11, :cond_ec

    .line 889
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_152

    .line 890
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 891
    .local v18, shiftTableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_15e

    .line 892
    if-eqz p1, :cond_155

    .line 894
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 895
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 888
    .end local v18           #shiftTableIndex:I
    :cond_152
    :goto_152
    add-int/lit8 v20, v20, 0x1

    goto :goto_114

    .line 898
    .restart local v18       #shiftTableIndex:I
    :cond_155
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_152

    .line 902
    :cond_15e
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_152

    .line 908
    .end local v18           #shiftTableIndex:I
    .end local v20           #table:I
    :cond_169
    const/16 v20, 0x0

    .restart local v20       #table:I
    :goto_16b
    move/from16 v0, v20

    if-gt v0, v11, :cond_ec

    .line 909
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_187

    .line 910
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 908
    :cond_187
    add-int/lit8 v20, v20, 0x1

    goto :goto_16b

    .line 918
    .end local v5           #c:C
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20           #table:I
    .end local v21           #tableIndex:I
    :cond_18a
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 919
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 920
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 921
    const v12, 0x7fffffff

    .line 922
    .local v12, minUnencodableCount:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1a7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_25b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 923
    .restart local v9       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, shiftTable:I
    :goto_1b5
    move/from16 v0, v17

    if-gt v0, v11, :cond_1a7

    .line 924
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 925
    .restart local v14       #septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1c8

    .line 923
    :cond_1c5
    :goto_1c5
    add-int/lit8 v17, v17, 0x1

    goto :goto_1b5

    .line 929
    :cond_1c8
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_243

    if-eqz v17, :cond_243

    .line 930
    const/16 v23, 0x8

    .line 938
    .local v23, udhLength:I
    :goto_1d2
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_251

    .line 939
    if-nez v23, :cond_1e0

    .line 940
    const/16 v23, 0x1

    .line 942
    :cond_1e0
    add-int/lit8 v23, v23, 0x6

    .line 943
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 944
    .local v15, septetsPerMessage:I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 945
    .local v13, msgCount:I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 951
    .end local v15           #septetsPerMessage:I
    .local v16, septetsRemaining:I
    :goto_1f0
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 952
    .local v24, unencodableCount:I
    if-eqz p1, :cond_1fc

    move/from16 v0, v24

    if-gt v0, v12, :cond_1c5

    .line 955
    :cond_1fc
    if-eqz p1, :cond_202

    move/from16 v0, v24

    if-lt v0, v12, :cond_222

    :cond_202
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_222

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_1c5

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_1c5

    .line 958
    :cond_222
    move/from16 v12, v24

    .line 959
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 960
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 961
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 962
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 963
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_1c5

    .line 931
    .end local v13           #msgCount:I
    .end local v16           #septetsRemaining:I
    .end local v23           #udhLength:I
    .end local v24           #unencodableCount:I
    :cond_243
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_24b

    if-eqz v17, :cond_24e

    .line 932
    :cond_24b
    const/16 v23, 0x5

    .restart local v23       #udhLength:I
    goto :goto_1d2

    .line 934
    .end local v23           #udhLength:I
    :cond_24e
    const/16 v23, 0x0

    .restart local v23       #udhLength:I
    goto :goto_1d2

    .line 947
    :cond_251
    const/4 v13, 0x1

    .line 948
    .restart local v13       #msgCount:I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16       #septetsRemaining:I
    goto :goto_1f0

    .line 968
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13           #msgCount:I
    .end local v14           #septets:I
    .end local v16           #septetsRemaining:I
    .end local v17           #shiftTable:I
    .end local v23           #udhLength:I
    :cond_25b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f

    .line 969
    const/16 v22, 0x0

    goto/16 :goto_2f
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 101
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 104
    :goto_8
    return v1

    .line 102
    :catch_9
    move-exception v0

    .line 104
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_8
.end method

.method public static charToGsm(CZ)I
    .registers 7
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 124
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 126
    .local v0, ret:I
    if-ne v0, v2, :cond_2c

    .line 127
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 129
    if-ne v0, v2, :cond_29

    .line 130
    if-eqz p1, :cond_20

    .line 131
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 133
    :cond_20
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 140
    :goto_28
    return v1

    .line 136
    :cond_29
    const/16 v1, 0x1b

    goto :goto_28

    :cond_2c
    move v1, v0

    .line 140
    goto :goto_28
.end method

.method public static charToGsmExtended(C)I
    .registers 6
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 154
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 156
    .local v0, ret:I
    if-ne v0, v2, :cond_16

    .line 157
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 160
    .end local v0           #ret:I
    :cond_16
    return v0
.end method

.method public static convertEachCharacter(C)C
    .registers 5
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 1511
    move v0, p0

    .line 1514
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_14

    .line 1517
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_15

    .line 1518
    move v0, p0

    .line 1527
    :cond_14
    :goto_14
    return v0

    .line 1519
    :cond_15
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 1520
    move v0, p0

    goto :goto_14

    .line 1523
    :cond_1f
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_14
.end method

.method private static convertNonGSMCharacter(C)C
    .registers 6
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 1534
    move v0, p0

    .line 1535
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1536
    sparse-switch v0, :sswitch_data_22e

    .line 1702
    const-string v1, "XEH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_5a

    const-string v1, "PAN"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_5a

    const-string v1, "TMH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_5a

    const-string v1, "VDH"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_21d

    .line 1706
    :cond_5a
    sparse-switch v0, :sswitch_data_3e0

    .line 1731
    :cond_5d
    :goto_5d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1733
    return v0

    .line 1548
    :sswitch_77
    const/16 v0, 0x61

    goto :goto_5d

    .line 1549
    :sswitch_7a
    const/16 v0, 0x61

    goto :goto_5d

    .line 1550
    :sswitch_7d
    const/16 v0, 0x61

    goto :goto_5d

    .line 1551
    :sswitch_80
    const/16 v0, 0x61

    goto :goto_5d

    .line 1552
    :sswitch_83
    const/16 v0, 0x61

    goto :goto_5d

    .line 1554
    :sswitch_86
    const/16 v0, 0x41

    goto :goto_5d

    .line 1555
    :sswitch_89
    const/16 v0, 0x41

    goto :goto_5d

    .line 1556
    :sswitch_8c
    const/16 v0, 0x41

    goto :goto_5d

    .line 1557
    :sswitch_8f
    const/16 v0, 0x41

    goto :goto_5d

    .line 1558
    :sswitch_92
    const/16 v0, 0x41

    goto :goto_5d

    .line 1559
    :sswitch_95
    const/16 v0, 0x41

    goto :goto_5d

    .line 1561
    :sswitch_98
    const/16 v0, 0x63

    goto :goto_5d

    .line 1562
    :sswitch_9b
    const/16 v0, 0x63

    goto :goto_5d

    .line 1563
    :sswitch_9e
    const/16 v0, 0x63

    goto :goto_5d

    .line 1565
    :sswitch_a1
    const/16 v0, 0x43

    goto :goto_5d

    .line 1566
    :sswitch_a4
    const/16 v0, 0x43

    goto :goto_5d

    .line 1568
    :sswitch_a7
    const/16 v0, 0x64

    goto :goto_5d

    .line 1570
    :sswitch_aa
    const/16 v0, 0x44

    goto :goto_5d

    .line 1572
    :sswitch_ad
    const/16 v0, 0x65

    goto :goto_5d

    .line 1573
    :sswitch_b0
    const/16 v0, 0x65

    goto :goto_5d

    .line 1574
    :sswitch_b3
    const/16 v0, 0x65

    goto :goto_5d

    .line 1575
    :sswitch_b6
    const/16 v0, 0x65

    goto :goto_5d

    .line 1576
    :sswitch_b9
    const/16 v0, 0x65

    goto :goto_5d

    .line 1578
    :sswitch_bc
    const/16 v0, 0x45

    goto :goto_5d

    .line 1579
    :sswitch_bf
    const/16 v0, 0x45

    goto :goto_5d

    .line 1580
    :sswitch_c2
    const/16 v0, 0x45

    goto :goto_5d

    .line 1581
    :sswitch_c5
    const/16 v0, 0x45

    goto :goto_5d

    .line 1582
    :sswitch_c8
    const/16 v0, 0x45

    goto :goto_5d

    .line 1583
    :sswitch_cb
    const/16 v0, 0x45

    goto :goto_5d

    .line 1585
    :sswitch_ce
    const/16 v0, 0x67

    goto :goto_5d

    .line 1587
    :sswitch_d1
    const/16 v0, 0x47

    goto :goto_5d

    .line 1589
    :sswitch_d4
    const/16 v0, 0x69

    goto :goto_5d

    .line 1590
    :sswitch_d7
    const/16 v0, 0x69

    goto :goto_5d

    .line 1591
    :sswitch_da
    const/16 v0, 0x69

    goto :goto_5d

    .line 1592
    :sswitch_dd
    const/16 v0, 0x69

    goto/16 :goto_5d

    .line 1593
    :sswitch_e1
    const/16 v0, 0x69

    goto/16 :goto_5d

    .line 1595
    :sswitch_e5
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1596
    :sswitch_e9
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1597
    :sswitch_ed
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1598
    :sswitch_f1
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1599
    :sswitch_f5
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1600
    :sswitch_f9
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1602
    :sswitch_fd
    const/16 v0, 0x6c

    goto/16 :goto_5d

    .line 1603
    :sswitch_101
    const/16 v0, 0x6c

    goto/16 :goto_5d

    .line 1604
    :sswitch_105
    const/16 v0, 0x6c

    goto/16 :goto_5d

    .line 1606
    :sswitch_109
    const/16 v0, 0x4c

    goto/16 :goto_5d

    .line 1607
    :sswitch_10d
    const/16 v0, 0x4c

    goto/16 :goto_5d

    .line 1608
    :sswitch_111
    const/16 v0, 0x4c

    goto/16 :goto_5d

    .line 1610
    :sswitch_115
    const/16 v0, 0x6e

    goto/16 :goto_5d

    .line 1611
    :sswitch_119
    const/16 v0, 0x6e

    goto/16 :goto_5d

    .line 1613
    :sswitch_11d
    const/16 v0, 0x4e

    goto/16 :goto_5d

    .line 1614
    :sswitch_121
    const/16 v0, 0x4e

    goto/16 :goto_5d

    .line 1616
    :sswitch_125
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1617
    :sswitch_129
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1618
    :sswitch_12d
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1619
    :sswitch_131
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1620
    :sswitch_135
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1622
    :sswitch_139
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1623
    :sswitch_13d
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1624
    :sswitch_141
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1625
    :sswitch_145
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1626
    :sswitch_149
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1627
    :sswitch_14d
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1629
    :sswitch_151
    const/16 v0, 0x72

    goto/16 :goto_5d

    .line 1630
    :sswitch_155
    const/16 v0, 0x72

    goto/16 :goto_5d

    .line 1632
    :sswitch_159
    const/16 v0, 0x52

    goto/16 :goto_5d

    .line 1633
    :sswitch_15d
    const/16 v0, 0x52

    goto/16 :goto_5d

    .line 1635
    :sswitch_161
    const/16 v0, 0x73

    goto/16 :goto_5d

    .line 1636
    :sswitch_165
    const/16 v0, 0x73

    goto/16 :goto_5d

    .line 1637
    :sswitch_169
    const/16 v0, 0x73

    goto/16 :goto_5d

    .line 1639
    :sswitch_16d
    const/16 v0, 0x53

    goto/16 :goto_5d

    .line 1640
    :sswitch_171
    const/16 v0, 0x53

    goto/16 :goto_5d

    .line 1641
    :sswitch_175
    const/16 v0, 0x53

    goto/16 :goto_5d

    .line 1643
    :sswitch_179
    const/16 v0, 0x74

    goto/16 :goto_5d

    .line 1645
    :sswitch_17d
    const/16 v0, 0x54

    goto/16 :goto_5d

    .line 1647
    :sswitch_181
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1648
    :sswitch_185
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1649
    :sswitch_189
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1650
    :sswitch_18d
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1652
    :sswitch_191
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1653
    :sswitch_195
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1654
    :sswitch_199
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1655
    :sswitch_19d
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1656
    :sswitch_1a1
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1658
    :sswitch_1a5
    const/16 v0, 0x79

    goto/16 :goto_5d

    .line 1659
    :sswitch_1a9
    const/16 v0, 0x79

    goto/16 :goto_5d

    .line 1661
    :sswitch_1ad
    const/16 v0, 0x59

    goto/16 :goto_5d

    .line 1662
    :sswitch_1b1
    const/16 v0, 0x59

    goto/16 :goto_5d

    .line 1664
    :sswitch_1b5
    const/16 v0, 0x7a

    goto/16 :goto_5d

    .line 1665
    :sswitch_1b9
    const/16 v0, 0x7a

    goto/16 :goto_5d

    .line 1666
    :sswitch_1bd
    const/16 v0, 0x7a

    goto/16 :goto_5d

    .line 1668
    :sswitch_1c1
    const/16 v0, 0x5a

    goto/16 :goto_5d

    .line 1669
    :sswitch_1c5
    const/16 v0, 0x5a

    goto/16 :goto_5d

    .line 1670
    :sswitch_1c9
    const/16 v0, 0x5a

    goto/16 :goto_5d

    .line 1673
    :sswitch_1cd
    const/16 v0, 0x45

    goto/16 :goto_5d

    .line 1674
    :sswitch_1d1
    const/16 v0, 0x50

    goto/16 :goto_5d

    .line 1675
    :sswitch_1d5
    const/16 v0, 0x54

    goto/16 :goto_5d

    .line 1676
    :sswitch_1d9
    const/16 v0, 0x59

    goto/16 :goto_5d

    .line 1677
    :sswitch_1dd
    const/16 v0, 0x49

    goto/16 :goto_5d

    .line 1678
    :sswitch_1e1
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1679
    :sswitch_1e5
    const/16 v0, 0x41

    goto/16 :goto_5d

    .line 1680
    :sswitch_1e9
    const/16 v0, 0x48

    goto/16 :goto_5d

    .line 1681
    :sswitch_1ed
    const/16 v0, 0x4b

    goto/16 :goto_5d

    .line 1682
    :sswitch_1f1
    const/16 v0, 0x5a

    goto/16 :goto_5d

    .line 1683
    :sswitch_1f5
    const/16 v0, 0x58

    goto/16 :goto_5d

    .line 1684
    :sswitch_1f9
    const/16 v0, 0x42

    goto/16 :goto_5d

    .line 1685
    :sswitch_1fd
    const/16 v0, 0x4e

    goto/16 :goto_5d

    .line 1686
    :sswitch_201
    const/16 v0, 0x4d

    goto/16 :goto_5d

    .line 1707
    :sswitch_205
    const/16 v0, 0x65

    goto/16 :goto_5d

    .line 1708
    :sswitch_209
    const/16 v0, 0x6f

    goto/16 :goto_5d

    .line 1709
    :sswitch_20d
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1710
    :sswitch_211
    const/16 v0, 0x4f

    goto/16 :goto_5d

    .line 1711
    :sswitch_215
    const/16 v0, 0x55

    goto/16 :goto_5d

    .line 1712
    :sswitch_219
    const/16 v0, 0x75

    goto/16 :goto_5d

    .line 1716
    :cond_21d
    const/16 v1, 0x7f

    if-le v0, v1, :cond_5d

    .line 1718
    const/16 v1, 0x80

    if-ne v0, v1, :cond_229

    .line 1721
    const/16 v0, 0x20

    goto/16 :goto_5d

    .line 1725
    :cond_229
    const v0, 0xfeff

    goto/16 :goto_5d

    .line 1536
    :sswitch_data_22e
    .sparse-switch
        0xc0 -> :sswitch_86
        0xc1 -> :sswitch_89
        0xc2 -> :sswitch_8c
        0xc3 -> :sswitch_8f
        0xc8 -> :sswitch_bc
        0xca -> :sswitch_bf
        0xcb -> :sswitch_c2
        0xcc -> :sswitch_e5
        0xcd -> :sswitch_e9
        0xce -> :sswitch_ed
        0xcf -> :sswitch_f1
        0xd2 -> :sswitch_139
        0xd3 -> :sswitch_13d
        0xd4 -> :sswitch_141
        0xd5 -> :sswitch_145
        0xd9 -> :sswitch_191
        0xda -> :sswitch_195
        0xdb -> :sswitch_199
        0xdd -> :sswitch_1ad
        0xe1 -> :sswitch_77
        0xe2 -> :sswitch_7a
        0xe3 -> :sswitch_7d
        0xe7 -> :sswitch_9e
        0xea -> :sswitch_ad
        0xeb -> :sswitch_b0
        0xed -> :sswitch_d4
        0xee -> :sswitch_d7
        0xef -> :sswitch_da
        0xf3 -> :sswitch_125
        0xf4 -> :sswitch_129
        0xf5 -> :sswitch_12d
        0xfa -> :sswitch_181
        0xfb -> :sswitch_185
        0xfd -> :sswitch_1a5
        0xff -> :sswitch_1a9
        0x100 -> :sswitch_92
        0x101 -> :sswitch_83
        0x104 -> :sswitch_95
        0x105 -> :sswitch_80
        0x106 -> :sswitch_a1
        0x107 -> :sswitch_98
        0x10c -> :sswitch_a4
        0x10d -> :sswitch_9b
        0x10e -> :sswitch_aa
        0x10f -> :sswitch_a7
        0x112 -> :sswitch_cb
        0x113 -> :sswitch_b9
        0x118 -> :sswitch_c5
        0x119 -> :sswitch_b3
        0x11a -> :sswitch_c8
        0x11b -> :sswitch_b6
        0x11e -> :sswitch_d1
        0x11f -> :sswitch_ce
        0x12a -> :sswitch_f9
        0x12b -> :sswitch_e1
        0x130 -> :sswitch_f5
        0x131 -> :sswitch_dd
        0x139 -> :sswitch_109
        0x13a -> :sswitch_fd
        0x13d -> :sswitch_10d
        0x13e -> :sswitch_101
        0x141 -> :sswitch_111
        0x142 -> :sswitch_105
        0x143 -> :sswitch_11d
        0x144 -> :sswitch_115
        0x147 -> :sswitch_121
        0x148 -> :sswitch_119
        0x14c -> :sswitch_149
        0x14d -> :sswitch_131
        0x152 -> :sswitch_14d
        0x153 -> :sswitch_135
        0x154 -> :sswitch_159
        0x155 -> :sswitch_151
        0x158 -> :sswitch_15d
        0x159 -> :sswitch_155
        0x15a -> :sswitch_16d
        0x15b -> :sswitch_161
        0x15e -> :sswitch_175
        0x15f -> :sswitch_169
        0x160 -> :sswitch_171
        0x161 -> :sswitch_165
        0x164 -> :sswitch_17d
        0x165 -> :sswitch_179
        0x16a -> :sswitch_1a1
        0x16b -> :sswitch_18d
        0x16e -> :sswitch_19d
        0x16f -> :sswitch_189
        0x178 -> :sswitch_1b1
        0x179 -> :sswitch_1c1
        0x17a -> :sswitch_1b5
        0x17b -> :sswitch_1c9
        0x17c -> :sswitch_1bd
        0x17d -> :sswitch_1c5
        0x17e -> :sswitch_1b9
        0x391 -> :sswitch_1e5
        0x392 -> :sswitch_1f9
        0x395 -> :sswitch_1cd
        0x396 -> :sswitch_1f1
        0x397 -> :sswitch_1e9
        0x399 -> :sswitch_1dd
        0x39a -> :sswitch_1ed
        0x39c -> :sswitch_201
        0x39d -> :sswitch_1fd
        0x39f -> :sswitch_1e1
        0x3a1 -> :sswitch_1d1
        0x3a4 -> :sswitch_1d5
        0x3a5 -> :sswitch_1d9
        0x3a7 -> :sswitch_1f5
    .end sparse-switch

    .line 1706
    :sswitch_data_3e0
    .sparse-switch
        0xe9 -> :sswitch_205
        0xf6 -> :sswitch_209
        0xfc -> :sswitch_20d
        0x150 -> :sswitch_211
        0x170 -> :sswitch_215
        0x171 -> :sswitch_219
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 730
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 733
    :goto_6
    return v1

    .line 731
    :catch_7
    move-exception v0

    .line 733
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 6
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 748
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 760
    :cond_d
    :goto_d
    return v0

    .line 752
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 753
    const/4 v0, 0x2

    goto :goto_d

    .line 756
    :cond_1a
    if-eqz p1, :cond_d

    .line 757
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 773
    .local v2, sz:I
    const/4 v1, 0x0

    .line 775
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 776
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 780
    :cond_14
    return v1
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 13
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v6, -0x1

    .line 797
    const/4 v3, 0x0

    .line 798
    .local v3, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 799
    .local v5, sz:I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 800
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 801
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_3b

    .line 802
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 803
    .local v0, c:C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_23

    .line 804
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 807
    :cond_23
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2c

    .line 808
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 809
    :cond_2c
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_35

    .line 810
    add-int/lit8 v3, v3, 0x2

    goto :goto_20

    .line 811
    :cond_35
    if-eqz p1, :cond_3a

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    move v3, v6

    .line 817
    .end local v0           #c:C
    .end local v3           #count:I
    :cond_3b
    return v3
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 995
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 996
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 997
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_f
    if-ge v4, v5, :cond_33

    .line 998
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 999
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_2d

    .line 1000
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1001
    if-ne v3, v7, :cond_2a

    .line 1003
    add-int/lit8 v0, v0, 0x1

    .line 1010
    :goto_27
    if-le v0, p2, :cond_30

    .line 1014
    .end local v3           #encodedSeptet:I
    .end local v4           #i:I
    :goto_29
    return v4

    .line 1005
    .restart local v3       #encodedSeptet:I
    .restart local v4       #i:I
    :cond_2a
    add-int/lit8 v0, v0, 0x2

    goto :goto_27

    .line 1008
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 997
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v3           #encodedSeptet:I
    :cond_33
    move v4, v5

    .line 1014
    goto :goto_29
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .registers 2

    .prologue
    .line 1064
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .registers 2

    .prologue
    .line 1053
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 413
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 14
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 437
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, p2, :cond_52

    .line 438
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 440
    .local v0, bitOffset:I
    :try_start_d
    div-int/lit8 v1, v0, 0x8

    .line 441
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 444
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 447
    .local v3, gsmVal:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_2d

    .line 449
    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 451
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 454
    :cond_2d
    if-eqz v5, :cond_3a

    .line 455
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    const/4 v5, 0x0

    .line 437
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 457
    :cond_3a
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_40

    .line 458
    const/4 v5, 0x1

    goto :goto_37

    .line 460
    :cond_40
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_47} :catch_48

    goto :goto_37

    .line 463
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_48
    move-exception v2

    .line 464
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const/4 v8, 0x0

    .line 468
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_51
    return-object v8

    :cond_52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_51
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 21
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 488
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 490
    .local v9, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_10

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_33

    .line 491
    :cond_10
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 p4, 0x0

    .line 494
    :cond_33
    if-ltz p5, :cond_3c

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_5f

    .line 495
    :cond_3c
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 p5, 0x0

    .line 500
    :cond_5f
    const/4 v8, 0x0

    .line 501
    .local v8, prevCharWasEscape:Z
    :try_start_60
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 502
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 504
    .local v11, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_94

    .line 505
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 508
    :cond_94
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 509
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 513
    :cond_c0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c1
    move/from16 v0, p2

    if-ge v6, v0, :cond_124

    .line 514
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 516
    .local v1, bitOffset:I
    div-int/lit8 v2, v1, 0x8

    .line 517
    .local v2, byteOffset:I
    rem-int/lit8 v10, v1, 0x8

    .line 520
    .local v10, shift:I
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 523
    .local v5, gsmVal:I
    const/4 v12, 0x1

    if-le v10, v12, :cond_e9

    .line 525
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 527
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 530
    :cond_e9
    if-eqz v8, :cond_116

    .line 531
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_f8

    .line 532
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    :goto_f4
    const/4 v8, 0x0

    .line 513
    :goto_f5
    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    .line 534
    :cond_f8
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 535
    .local v3, c:C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_112

    .line 536
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_107
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_107} :catch_108

    goto :goto_f4

    .line 548
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v3           #c:C
    .end local v5           #gsmVal:I
    .end local v6           #i:I
    .end local v7           #languageTableToChar:Ljava/lang/String;
    .end local v10           #shift:I
    .end local v11           #shiftTableToChar:Ljava/lang/String;
    :catch_108
    move-exception v4

    .line 549
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    const/4 v12, 0x0

    .line 553
    .end local v4           #ex:Ljava/lang/RuntimeException;
    :goto_111
    return-object v12

    .line 538
    .restart local v1       #bitOffset:I
    .restart local v2       #byteOffset:I
    .restart local v3       #c:C
    .restart local v5       #gsmVal:I
    .restart local v6       #i:I
    .restart local v7       #languageTableToChar:Ljava/lang/String;
    .restart local v10       #shift:I
    .restart local v11       #shiftTableToChar:Ljava/lang/String;
    :cond_112
    :try_start_112
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f4

    .line 542
    .end local v3           #c:C
    :cond_116
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_11c

    .line 543
    const/4 v8, 0x1

    goto :goto_f5

    .line 545
    :cond_11c
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_123
    .catch Ljava/lang/RuntimeException; {:try_start_112 .. :try_end_123} :catch_108

    goto :goto_f5

    .line 553
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v5           #gsmVal:I
    .end local v10           #shift:I
    :cond_124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_111
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 571
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "characterset"

    .prologue
    .line 586
    const/4 v6, 0x0

    .line 587
    .local v6, isMbcs:Z
    const/4 v2, 0x0

    .line 588
    .local v2, charset:Ljava/nio/charset/Charset;
    const/4 v8, 0x0

    .line 590
    .local v8, mbcsBuffer:Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_24

    const-string/jumbo v13, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_24

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 593
    const/4 v6, 0x1

    .line 594
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 595
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 599
    :cond_24
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v7, v13, v14

    .line 600
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 602
    .local v12, shiftTableToChar:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 603
    .local v10, ret:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 604
    .local v9, prevWasEscape:Z
    move/from16 v4, p1

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_39
    add-int v13, p1, p2

    if-ge v5, v13, :cond_45

    .line 607
    aget-byte v13, p0, v5

    and-int/lit16 v1, v13, 0xff

    .line 609
    .local v1, c:I
    const/16 v13, 0xff

    if-ne v1, v13, :cond_4a

    .line 650
    .end local v1           #c:I
    :cond_45
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 611
    .restart local v1       #c:I
    :cond_4a
    const/16 v13, 0x1b

    if-ne v1, v13, :cond_5e

    .line 612
    if-eqz v9, :cond_5b

    .line 616
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    const/4 v9, 0x0

    move v4, v5

    .line 604
    .end local v5           #i:I
    .restart local v4       #i:I
    :goto_57
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_39

    .line 619
    :cond_5b
    const/4 v9, 0x1

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_57

    .line 622
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_5e
    if-eqz v9, :cond_76

    .line 623
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 624
    .local v11, shiftChar:C
    const/16 v13, 0x20

    if-ne v11, v13, :cond_72

    .line 626
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6f
    move v4, v5

    .line 646
    .end local v5           #i:I
    .end local v11           #shiftChar:C
    .restart local v4       #i:I
    :goto_70
    const/4 v9, 0x0

    goto :goto_57

    .line 628
    .end local v4           #i:I
    .restart local v5       #i:I
    .restart local v11       #shiftChar:C
    :cond_72
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 631
    .end local v11           #shiftChar:C
    :cond_76
    if-eqz v6, :cond_82

    const/16 v13, 0x80

    if-lt v1, v13, :cond_82

    add-int/lit8 v13, v5, 0x1

    add-int v14, p1, p2

    if-lt v13, v14, :cond_bb

    .line 633
    :cond_82
    :try_start_82
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_8b

    move v4, v5

    .line 637
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_70

    .line 634
    .end local v4           #i:I
    .restart local v5       #i:I
    :catch_8b
    move-exception v3

    .line 635
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gsm8BitUnpackedToString : Exception - index("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), char("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    .line 637
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_70

    .line 640
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_bb
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 641
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 643
    invoke-virtual {v2, v8}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70
.end method

.method public static gsmExtendedToChar(I)C
    .registers 5
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 199
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_9

    move v0, v1

    .line 209
    :cond_8
    :goto_8
    return v0

    .line 201
    :cond_9
    if-ltz p0, :cond_22

    const/16 v2, 0x80

    if-ge p0, v2, :cond_22

    .line 202
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 203
    .local v0, c:C
    if-ne v0, v1, :cond_8

    .line 204
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .end local v0           #c:C
    :cond_22
    move v0, v1

    .line 209
    goto :goto_8
.end method

.method public static gsmToChar(I)C
    .registers 3
    .parameter "gsmChar"

    .prologue
    .line 177
    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 178
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    :goto_f
    return v0

    :cond_10
    const/16 v0, 0x20

    goto :goto_f
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 390
    div-int/lit8 v0, p1, 0x8

    .line 391
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 393
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 395
    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    .line 396
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 398
    :cond_1a
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .registers 3
    .parameter "tables"

    .prologue
    .line 1042
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 1043
    monitor-exit v0

    return-void

    .line 1042
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .registers 3
    .parameter "tables"

    .prologue
    .line 1025
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1027
    array-length v0, p0

    if-lez v0, :cond_11

    .line 1028
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 1032
    :goto_f
    monitor-exit v1

    return-void

    .line 1030
    :cond_11
    const/4 v0, 0x0

    :try_start_12
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_f

    .line 1025
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 5
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 20
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 341
    .local v7, dataLen:I
    if-nez p2, :cond_1a

    const/4 v13, 0x1

    :goto_7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 343
    .local v10, septetCount:I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1c

    .line 344
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 341
    .end local v10           #septetCount:I
    :cond_1a
    const/4 v13, 0x0

    goto :goto_7

    .line 346
    .restart local v10       #septetCount:I
    :cond_1c
    add-int v10, v10, p1

    .line 347
    const/16 v13, 0xff

    if-le v10, v13, :cond_2a

    .line 348
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 350
    :cond_2a
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 351
    .local v3, byteCount:I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 352
    .local v9, ret:[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 353
    .local v5, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 354
    .local v6, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .local v8, i:I
    move/from16 v11, p1

    .local v11, septets:I
    mul-int/lit8 v2, p1, 0x7

    .line 355
    .local v2, bitOffset:I
    :goto_41
    if-ge v8, v7, :cond_80

    if-ge v11, v10, :cond_80

    .line 357
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 358
    .local v4, c:C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 359
    .local v12, v:I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_6c

    .line 360
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 361
    const/4 v13, -0x1

    if-ne v12, v13, :cond_76

    .line 362
    if-eqz p2, :cond_64

    .line 363
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 365
    :cond_64
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 373
    :cond_6c
    :goto_6c
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 374
    add-int/lit8 v11, v11, 0x1

    .line 356
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_41

    .line 368
    :cond_76
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 369
    add-int/lit8 v2, v2, 0x7

    .line 370
    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    .line 376
    .end local v4           #c:C
    .end local v12           #v:I
    :cond_80
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 377
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 3
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 10
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 256
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_b

    .line 257
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 269
    :goto_a
    return-object v2

    .line 260
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 261
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 263
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 267
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 268
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 663
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 666
    .local v1, septets:I
    new-array v0, v1, [B

    .line 668
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 670
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 16
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 685
    move v4, p2

    .line 686
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 687
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 690
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 691
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_13
    if-ge v3, v6, :cond_3b

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3b

    .line 694
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 696
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 698
    .local v7, v:I
    if-ne v7, v9, :cond_4d

    .line 699
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 700
    if-ne v7, v9, :cond_36

    .line 701
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 712
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_2e
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 704
    :cond_36
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_45

    .line 716
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_3b
    :goto_3b
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_4c

    .line 717
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_3b

    .line 708
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_45
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_2e

    .line 719
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_4c
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4d
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_2e
.end method
