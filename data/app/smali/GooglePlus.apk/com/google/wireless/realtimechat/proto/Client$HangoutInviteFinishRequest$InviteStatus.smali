.class public final enum Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InviteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field public static final enum CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field public static final enum CONNECTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;",
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

    .line 45363
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45364
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CONNECTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45365
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45361
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CONNECTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    .line 45389
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 45398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45399
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->value:I

    .line 45400
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 45376
    packed-switch p0, :pswitch_data_e

    .line 45380
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 45377
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    goto :goto_4

    .line 45378
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CONNECTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    goto :goto_4

    .line 45379
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->CANCELED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    goto :goto_4

    .line 45376
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 45361
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;
    .registers 1

    .prologue
    .line 45361
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 45373
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->value:I

    return v0
.end method
