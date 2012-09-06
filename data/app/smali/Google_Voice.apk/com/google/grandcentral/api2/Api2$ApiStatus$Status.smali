.class public final enum Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final enum BAD_FORWARDING_PHONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final BAD_FORWARDING_PHONE_VALUE:I = 0x4

.field public static final enum CLIENT_SETTINGS_TOO_LARGE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final CLIENT_SETTINGS_TOO_LARGE_VALUE:I = 0x13

.field public static final enum FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final FORWARDING_IN_USE_VALUE:I = 0x7

.field public static final enum GAIA_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final GAIA_ERROR_VALUE:I = 0x9

.field public static final enum INVALID_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_ACCOUNT_VALUE:I = 0xc

.field public static final enum INVALID_AMOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_AMOUNT_VALUE:I = 0xa

.field public static final enum INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_AUTH_TOKEN_VALUE:I = 0x2

.field public static final enum INVALID_EMAIL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_EMAIL_VALUE:I = 0x8

.field public static final enum INVALID_IP:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_IP_VALUE:I = 0xb

.field public static final enum INVALID_LABEL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_LABEL_VALUE:I = 0x6

.field public static final enum INVALID_PHONE_NUMBER:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_PHONE_NUMBER_VALUE:I = 0x3

.field public static final enum INVALID_REQUEST:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_REQUEST_VALUE:I = 0x5

.field public static final enum INVALID_TIMEZONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final INVALID_TIMEZONE_VALUE:I = 0xe

.field public static final enum NO_SIP_ON_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final NO_SIP_ON_ACCOUNT_VALUE:I = 0xd

.field public static final enum OK:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final OK_VALUE:I = 0x0

.field public static final enum SERVER_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final SERVER_ERROR_VALUE:I = 0x1

.field public static final enum SMS_DESTINATION_DISALLOWED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final SMS_DESTINATION_DISALLOWED_VALUE:I = 0x11

.field public static final enum SMS_LIMIT_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final SMS_LIMIT_EXCEEDED_VALUE:I = 0x10

.field public static final enum SMS_QUOTA_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final SMS_QUOTA_EXCEEDED_VALUE:I = 0xf

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 385
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->OK:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 386
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SERVER_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 387
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_AUTH_TOKEN"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 388
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_PHONE_NUMBER"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_PHONE_NUMBER:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 389
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "BAD_FORWARDING_PHONE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->BAD_FORWARDING_PHONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 390
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_REQUEST"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 391
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_LABEL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_LABEL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 392
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "FORWARDING_IN_USE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 393
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_EMAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_EMAIL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 394
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "GAIA_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->GAIA_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 395
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_AMOUNT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AMOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 396
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_IP"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_IP:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 397
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_ACCOUNT"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 398
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "NO_SIP_ON_ACCOUNT"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->NO_SIP_ON_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 399
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "INVALID_TIMEZONE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_TIMEZONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 400
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "SMS_QUOTA_EXCEEDED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_QUOTA_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 401
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "SMS_LIMIT_EXCEEDED"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_LIMIT_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 402
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "SMS_DESTINATION_DISALLOWED"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_DESTINATION_DISALLOWED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 403
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "CLIENT_SETTINGS_TOO_LARGE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->CLIENT_SETTINGS_TOO_LARGE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 404
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 383
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->OK:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SERVER_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_PHONE_NUMBER:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->BAD_FORWARDING_PHONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_LABEL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_EMAIL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->GAIA_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AMOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_IP:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->NO_SIP_ON_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_TIMEZONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_QUOTA_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_LIMIT_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_DESTINATION_DISALLOWED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->CLIENT_SETTINGS_TOO_LARGE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    .line 462
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 472
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->value:I

    .line 473
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 432
    sparse-switch p0, :sswitch_data_42

    .line 453
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 433
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->OK:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 434
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SERVER_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 435
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 436
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_PHONE_NUMBER:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 437
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->BAD_FORWARDING_PHONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 438
    :sswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 439
    :sswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_LABEL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 440
    :sswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 441
    :sswitch_1d
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_EMAIL:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 442
    :sswitch_20
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->GAIA_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 443
    :sswitch_23
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AMOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 444
    :sswitch_26
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_IP:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 445
    :sswitch_29
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 446
    :sswitch_2c
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->NO_SIP_ON_ACCOUNT:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 447
    :sswitch_2f
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_TIMEZONE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 448
    :sswitch_32
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_QUOTA_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 449
    :sswitch_35
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_LIMIT_EXCEEDED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 450
    :sswitch_38
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SMS_DESTINATION_DISALLOWED:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 451
    :sswitch_3b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->CLIENT_SETTINGS_TOO_LARGE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 452
    :sswitch_3e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    goto :goto_4

    .line 432
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x5 -> :sswitch_14
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_20
        0xa -> :sswitch_23
        0xb -> :sswitch_26
        0xc -> :sswitch_29
        0xd -> :sswitch_2c
        0xe -> :sswitch_2f
        0xf -> :sswitch_32
        0x10 -> :sswitch_35
        0x11 -> :sswitch_38
        0x13 -> :sswitch_3b
        0xff -> :sswitch_3e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 383
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 1

    .prologue
    .line 383
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->value:I

    return v0
.end method
