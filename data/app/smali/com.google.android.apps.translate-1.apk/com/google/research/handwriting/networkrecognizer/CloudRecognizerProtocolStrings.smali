.class public Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;
.super Ljava/lang/Object;
.source "CloudRecognizerProtocolStrings.java"


# static fields
.field public static final API_LEVEL:Ljava/lang/String; = "api_level"

.field public static final APP:Ljava/lang/String; = "app"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final CLIENT_SOURCE:Ljava/lang/String; = "cs"

.field public static final CLIENT_SOURCE_VALUE:Ljava/lang/String; = "1"

.field public static final DBG:Ljava/lang/String; = "dbg"

.field public static final DBG_VALUE:Ljava/lang/String; = "0"

.field public static final DEBUG_INFO:Ljava/lang/String; = "debug_info"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final FEEDBACK:Ljava/lang/String; = "feedback"

.field public static final FEEDBACK_COMPLETION:Ljava/lang/String; = "feedback_completion"

.field public static final HANDWRITING:Ljava/lang/String; = "handwriting"

.field public static final IME:Ljava/lang/String; = "ime"

.field public static final INK:Ljava/lang/String; = "ink"

.field public static final INK_HASH:Ljava/lang/String; = "ink_hash"

.field public static final INPUT_TYPE:Ljava/lang/String; = "input_type"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final OUTPUT_ENCODING:Ljava/lang/String; = "oe"

.field public static final OUTPUT_ENCODING_VALUE:Ljava/lang/String; = "UTF-8"

.field public static final POST_CONTEXT:Ljava/lang/String; = "post_context"

.field public static final PRE_CONTEXT:Ljava/lang/String; = "pre_context"

.field public static final REQUESTS:Ljava/lang/String; = "requests"

.field public static final SELECT_TYPE:Ljava/lang/String; = "select_type"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final TRANSLATE_API_SOURCE_LANGUAGE:Ljava/lang/String; = "sl"

.field public static final TRANSLATE_API_TARGET_LANGUAGE:Ljava/lang/String; = "tl"

.field public static final TRANSLATE_CLIENT:Ljava/lang/String; = "client"

.field public static final TRANSLATE_CLIENT_VALUE:Ljava/lang/String; = "at"

.field private static final URL_TEMPLATE_FOR_TRANSLATE_API:Ljava/lang/String; = null

.field private static final URL_TEMPLATE_WITHOUT_LANGUAGE:Ljava/lang/String; = null

.field private static final URL_TEMPLATE_WITH_LANGUAGE:Ljava/lang/String; = null

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final WRITING_GUIDE:Ljava/lang/String; = "writing_guide"

.field public static final WRITING_GUIDE_HEIGHT:Ljava/lang/String; = "writing_area_height"

.field public static final WRITING_GUIDE_WIDTH:Ljava/lang/String; = "writing_area_width"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    const-string v0, "%%s%%s?%s=%s_%%s&%s=%%s&%s=%s&%s=%s&%s=%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ime"

    aput-object v2, v1, v4

    const-string v2, "handwriting"

    aput-object v2, v1, v5

    const-string v2, "app"

    aput-object v2, v1, v6

    const-string v2, "dbg"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "cs"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "oe"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "UTF-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_WITH_LANGUAGE:Ljava/lang/String;

    .line 69
    const-string v0, "%%s%%s?%s=%s&%s=%%s&%s=%s&%s=%s&%s=%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ime"

    aput-object v2, v1, v4

    const-string v2, "handwriting"

    aput-object v2, v1, v5

    const-string v2, "app"

    aput-object v2, v1, v6

    const-string v2, "dbg"

    aput-object v2, v1, v7

    const-string v2, "0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "cs"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "oe"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "UTF-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_WITHOUT_LANGUAGE:Ljava/lang/String;

    .line 83
    const-string v0, "%%s%%s?%s=%s&%s=%s&%s=%%s&%s=%s&%s=%s&%s=%s&%s=%%s&%s=%%s"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ime"

    aput-object v2, v1, v4

    const-string v2, "handwriting"

    aput-object v2, v1, v5

    const-string v2, "client"

    aput-object v2, v1, v6

    const-string v2, "at"

    aput-object v2, v1, v7

    const-string v2, "app"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "dbg"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "cs"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "oe"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "UTF-8"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "sl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "tl"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_FOR_TRANSLATE_API:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recognitionUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "server"
    .parameter "recoPath"
    .parameter "clientName"
    .parameter "useTranslateApi"
    .parameter "sourceLanguage"
    .parameter "targetLanguage"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    if-eqz p3, :cond_1b

    .line 134
    sget-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_FOR_TRANSLATE_API:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    aput-object p4, v1, v5

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_WITHOUT_LANGUAGE:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static recognitionUrlWithLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "server"
    .parameter "recoPath"
    .parameter "language"
    .parameter "clientName"

    .prologue
    .line 115
    sget-object v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->URL_TEMPLATE_WITH_LANGUAGE:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
