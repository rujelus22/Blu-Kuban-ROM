.class public final enum Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;
.super Ljava/lang/Enum;
.source "Buzz.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PAYLOAD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

.field public static final enum BATCHED_STANZA:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

.field public static final enum PUSH_MESSAGE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

.field public static final enum PUSH_SUBSCRIPTION:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;",
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

    .line 3738
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    const-string v1, "PUSH_SUBSCRIPTION"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_SUBSCRIPTION:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    .line 3739
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    const-string v1, "PUSH_MESSAGE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_MESSAGE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    .line 3740
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    const-string v1, "BATCHED_STANZA"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->BATCHED_STANZA:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    .line 3736
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_SUBSCRIPTION:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_MESSAGE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->BATCHED_STANZA:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    .line 3764
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3773
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3774
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->value:I

    .line 3775
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;
    .registers 2
    .parameter "value"

    .prologue
    .line 3751
    packed-switch p0, :pswitch_data_e

    .line 3755
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3752
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_SUBSCRIPTION:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    goto :goto_4

    .line 3753
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->PUSH_MESSAGE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    goto :goto_4

    .line 3754
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->BATCHED_STANZA:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    goto :goto_4

    .line 3751
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;
    .registers 2
    .parameter

    .prologue
    .line 3736
    const-class v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;
    .registers 1

    .prologue
    .line 3736
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 3748
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$PAYLOAD_TYPE;->value:I

    return v0
.end method
