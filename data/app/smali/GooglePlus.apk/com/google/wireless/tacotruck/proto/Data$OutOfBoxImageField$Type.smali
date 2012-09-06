.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field public static final enum ANDROID_MARKET_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field public static final enum APP_STORE_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field public static final enum INSTANT_UPLOAD:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field public static final enum PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field public static final enum PLUSONE_WIDGET:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32460
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const-string v1, "PICASA"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32461
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const-string v1, "ANDROID_MARKET_LOGO"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->ANDROID_MARKET_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32462
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const-string v1, "APP_STORE_LOGO"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->APP_STORE_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32463
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const-string v1, "PLUSONE_WIDGET"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PLUSONE_WIDGET:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32464
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    const-string v1, "INSTANT_UPLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->INSTANT_UPLOAD:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32458
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->ANDROID_MARKET_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->APP_STORE_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PLUSONE_WIDGET:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->INSTANT_UPLOAD:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32492
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 32501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32502
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->value:I

    .line 32503
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 32477
    packed-switch p0, :pswitch_data_14

    .line 32483
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 32478
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_4

    .line 32479
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->ANDROID_MARKET_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_4

    .line 32480
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->APP_STORE_LOGO:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_4

    .line 32481
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PLUSONE_WIDGET:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_4

    .line 32482
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->INSTANT_UPLOAD:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_4

    .line 32477
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 32458
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 1

    .prologue
    .line 32458
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 32474
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->value:I

    return v0
.end method
