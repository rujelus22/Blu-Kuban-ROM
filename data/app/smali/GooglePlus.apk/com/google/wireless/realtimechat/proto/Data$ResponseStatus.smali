.class public final enum Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum CONVERSATION_TOO_LARGE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_ALREADY_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_APP_BLOCKED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_CANNOT_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_COUNTRY_UNSUPPORTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_DUPLICATE_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_EXCEED_SMS_INVITES:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_HANGOUT_INVITE_ALREADY_HANDLED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_HANGOUT_INVITE_EXPIRED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_HANGOUT_INVITE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_HANGOUT_INVITE_NO_DEVICE_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_INVALID_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_INVALID_EMAIL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_INVALID_PHONE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_INVALID_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_INVALID_URL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_TEMPORARY:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_UNEXPECTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_USER_MUST_BE_GAIA:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_USER_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum ERROR_USER_NOT_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum NEED_ID:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field public static final enum OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 54
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 55
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 56
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_CANNOT_CONTACT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_CANNOT_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 57
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "NEED_ID"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->NEED_ID:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 58
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "CONVERSATION_TOO_LARGE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->CONVERSATION_TOO_LARGE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 59
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_INVALID_CONTACT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 60
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_INVALID_EMAIL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_EMAIL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 61
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_INVALID_PHONE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_PHONE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 62
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_COUNTRY_UNSUPPORTED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_COUNTRY_UNSUPPORTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 63
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_INVALID_URL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_URL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 64
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_APP_BLOCKED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_APP_BLOCKED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 65
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_EXCEED_SMS_INVITES"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_EXCEED_SMS_INVITES:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 66
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_ALREADY_IN_CONVERSATION"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_ALREADY_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 67
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_USER_NOT_IN_CONVERSATION"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 68
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_INVALID_REQUEST"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 69
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_UNEXPECTED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_UNEXPECTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 70
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_USER_MUST_BE_GAIA"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_MUST_BE_GAIA:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 71
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_USER_NOT_FOUND"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 72
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_DUPLICATE_REQUEST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_DUPLICATE_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 73
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_HANGOUT_INVITE_NOT_FOUND"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 74
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_HANGOUT_INVITE_EXPIRED"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_EXPIRED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 75
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_HANGOUT_INVITE_ALREADY_HANDLED"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_ALREADY_HANDLED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 76
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_HANGOUT_INVITE_NO_DEVICE_FOUND"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NO_DEVICE_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 77
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const-string v1, "ERROR_TEMPORARY"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_TEMPORARY:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 52
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_CANNOT_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->NEED_ID:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->CONVERSATION_TOO_LARGE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_EMAIL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_PHONE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_COUNTRY_UNSUPPORTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_URL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_APP_BLOCKED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_EXCEED_SMS_INVITES:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_ALREADY_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_UNEXPECTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_MUST_BE_GAIA:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_DUPLICATE_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_EXPIRED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_ALREADY_HANDLED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NO_DEVICE_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_TEMPORARY:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 143
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->value:I

    .line 154
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 109
    packed-switch p0, :pswitch_data_4e

    .line 134
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 110
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 111
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 112
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_CANNOT_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 113
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->NEED_ID:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 114
    :pswitch_11
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->CONVERSATION_TOO_LARGE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 115
    :pswitch_14
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_CONTACT:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 116
    :pswitch_17
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_EMAIL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 117
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_PHONE:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 118
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_COUNTRY_UNSUPPORTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 119
    :pswitch_20
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_URL:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 120
    :pswitch_23
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_APP_BLOCKED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 121
    :pswitch_26
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_EXCEED_SMS_INVITES:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 122
    :pswitch_29
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_ALREADY_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 123
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_IN_CONVERSATION:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 124
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_INVALID_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 125
    :pswitch_32
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_UNEXPECTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 126
    :pswitch_35
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_MUST_BE_GAIA:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 127
    :pswitch_38
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_USER_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 128
    :pswitch_3b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_DUPLICATE_REQUEST:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 129
    :pswitch_3e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 130
    :pswitch_41
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_EXPIRED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 131
    :pswitch_44
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_ALREADY_HANDLED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 132
    :pswitch_47
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_HANGOUT_INVITE_NO_DEVICE_FOUND:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 133
    :pswitch_4a
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_TEMPORARY:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_4

    .line 109
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->value:I

    return v0
.end method
