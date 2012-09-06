.class public final enum Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final enum ASSISTANT:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final ASSISTANT_VALUE:I = 0xb

.field public static final enum CALLBACK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final CALLBACK_VALUE:I = 0xf

.field public static final enum CAR:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final CAR_VALUE:I = 0xc

.field public static final enum COMPANY_MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final COMPANY_MAIN_VALUE:I = 0xa

.field public static final enum CUSTOM:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final CUSTOM_VALUE:I = 0x1

.field public static final enum GRAND_CENTRAL:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final GRAND_CENTRAL_VALUE:I = 0x15

.field public static final enum HOME:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final enum HOME_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final HOME_FAX_VALUE:I = 0x5

.field public static final HOME_VALUE:I = 0x2

.field public static final enum ISDN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final ISDN_VALUE:I = 0xe

.field public static final enum MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final MAIN_VALUE:I = 0x14

.field public static final enum MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final MOBILE_VALUE:I = 0x7

.field public static final enum OTHER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final enum OTHER_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final OTHER_FAX_VALUE:I = 0x9

.field public static final OTHER_VALUE:I = 0x4

.field public static final enum PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final PAGER_VALUE:I = 0x8

.field public static final enum RADIO:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final RADIO_VALUE:I = 0xd

.field public static final enum TELEX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final TELEX_VALUE:I = 0x10

.field public static final enum TTY_TDD:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final TTY_TDD_VALUE:I = 0x11

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum WORK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final enum WORK_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final WORK_FAX_VALUE:I = 0x6

.field public static final enum WORK_MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final WORK_MOBILE_VALUE:I = 0x12

.field public static final enum WORK_PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType; = null

.field public static final WORK_PAGER_VALUE:I = 0x13

.field public static final WORK_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;",
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

    .line 16773
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16774
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CUSTOM:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16775
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16776
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16777
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16778
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "HOME_FAX"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16779
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "WORK_FAX"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16780
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "MOBILE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16781
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "PAGER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16782
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "OTHER_FAX"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16783
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "COMPANY_MAIN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->COMPANY_MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16784
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "ASSISTANT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ASSISTANT:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16785
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "CAR"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CAR:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16786
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "RADIO"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->RADIO:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16787
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "ISDN"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ISDN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16788
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "CALLBACK"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CALLBACK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16789
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "TELEX"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TELEX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16790
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "TTY_TDD"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TTY_TDD:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16791
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "WORK_MOBILE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16792
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "WORK_PAGER"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16793
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "MAIN"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16794
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    const-string v1, "GRAND_CENTRAL"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->GRAND_CENTRAL:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16771
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CUSTOM:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->COMPANY_MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ASSISTANT:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CAR:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->RADIO:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ISDN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CALLBACK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TELEX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TTY_TDD:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->GRAND_CENTRAL:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    .line 16856
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 16865
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16866
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->value:I

    .line 16867
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16853
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    .registers 2
    .parameter "value"

    .prologue
    .line 16824
    packed-switch p0, :pswitch_data_48

    .line 16847
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 16825
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16826
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CUSTOM:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16827
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16828
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16829
    :pswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16830
    :pswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->HOME_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16831
    :pswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16832
    :pswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16833
    :pswitch_1d
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16834
    :pswitch_20
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->OTHER_FAX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16835
    :pswitch_23
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->COMPANY_MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16836
    :pswitch_26
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ASSISTANT:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16837
    :pswitch_29
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CAR:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16838
    :pswitch_2c
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->RADIO:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16839
    :pswitch_2f
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->ISDN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16840
    :pswitch_32
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->CALLBACK:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16841
    :pswitch_35
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TELEX:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16842
    :pswitch_38
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->TTY_TDD:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16843
    :pswitch_3b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_MOBILE:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16844
    :pswitch_3e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->WORK_PAGER:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16845
    :pswitch_41
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->MAIN:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16846
    :pswitch_44
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->GRAND_CENTRAL:Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    goto :goto_4

    .line 16824
    nop

    :pswitch_data_48
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    .registers 2
    .parameter "name"

    .prologue
    .line 16771
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;
    .registers 1

    .prologue
    .line 16771
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 16821
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiContact$PhoneType;->value:I

    return v0
.end method
