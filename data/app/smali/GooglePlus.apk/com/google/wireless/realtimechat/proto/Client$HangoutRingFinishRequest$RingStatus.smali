.class public final enum Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field public static final enum ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field public static final enum DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field public static final enum TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41318
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41319
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41320
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41316
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 41344
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 41353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41354
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->value:I

    .line 41355
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 41331
    packed-switch p0, :pswitch_data_e

    .line 41335
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 41332
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->TIMEOUT:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    goto :goto_4

    .line 41333
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    goto :goto_4

    .line 41334
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    goto :goto_4

    .line 41331
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 41316
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 1

    .prologue
    .line 41316
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 41328
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->value:I

    return v0
.end method
