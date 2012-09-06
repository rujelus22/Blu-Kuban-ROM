.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum COUNTRY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum DASHER_LEGAL_WARNING_BEEN_SHOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum DISABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum DORITOS:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum ENABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum ENABLE_WIFI_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum GENDER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum IDV_OBFUSCATED_GAIA_ID:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum IDV_PIN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum IDV_REQUEST:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum INVITATION_TOKEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum ORIGINAL_FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum ORIGINAL_LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum PICASA_LINKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum PICASA_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field public static final enum UNACCEPTABLE_NAME_TERMS_ACCEPTED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;",
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

    .line 33097
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "FIRST_NAME"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33098
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "LAST_NAME"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33099
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "BIRTHDAY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33100
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "GENDER"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->GENDER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33101
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "DORITOS"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DORITOS:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33102
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "UNACCEPTABLE_NAME_TERMS_ACCEPTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->UNACCEPTABLE_NAME_TERMS_ACCEPTED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33103
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "COUNTRY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->COUNTRY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33104
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33105
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "IDV_REQUEST"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_REQUEST:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33106
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "IDV_PIN"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_PIN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33107
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "IDV_OBFUSCATED_GAIA_ID"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_OBFUSCATED_GAIA_ID:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33108
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "PICASA_NAME"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33109
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "ORIGINAL_FIRST_NAME"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33110
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "ORIGINAL_LAST_NAME"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33111
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "INVITATION_TOKEN"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->INVITATION_TOKEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33112
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "ENABLE_CAMERASYNC"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33113
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "PICASA_LINKED"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_LINKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33114
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "ENABLE_WIFI_CAMERASYNC"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_WIFI_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33115
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "DISABLE_CAMERASYNC"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DISABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33116
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const-string v1, "DASHER_LEGAL_WARNING_BEEN_SHOWN"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DASHER_LEGAL_WARNING_BEEN_SHOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33095
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->GENDER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DORITOS:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->UNACCEPTABLE_NAME_TERMS_ACCEPTED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->COUNTRY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_REQUEST:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_PIN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_OBFUSCATED_GAIA_ID:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->INVITATION_TOKEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_LINKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_WIFI_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DISABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DASHER_LEGAL_WARNING_BEEN_SHOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    .line 33174
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 33183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33184
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->value:I

    .line 33185
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2
    .parameter "value"

    .prologue
    .line 33144
    packed-switch p0, :pswitch_data_42

    .line 33165
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 33145
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33146
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33147
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33148
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->GENDER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33149
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DORITOS:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33150
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->UNACCEPTABLE_NAME_TERMS_ACCEPTED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33151
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->COUNTRY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33152
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33153
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_REQUEST:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33154
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_PIN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33155
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->IDV_OBFUSCATED_GAIA_ID:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33156
    :pswitch_26
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33157
    :pswitch_29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_FIRST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33158
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ORIGINAL_LAST_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33159
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->INVITATION_TOKEN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33160
    :pswitch_32
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33161
    :pswitch_35
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->PICASA_LINKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33162
    :pswitch_38
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->ENABLE_WIFI_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33163
    :pswitch_3b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DISABLE_CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33164
    :pswitch_3e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->DASHER_LEGAL_WARNING_BEEN_SHOWN:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    goto :goto_4

    .line 33144
    nop

    :pswitch_data_42
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 2
    .parameter "name"

    .prologue
    .line 33095
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;
    .registers 1

    .prologue
    .line 33095
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 33141
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Id;->value:I

    return v0
.end method
