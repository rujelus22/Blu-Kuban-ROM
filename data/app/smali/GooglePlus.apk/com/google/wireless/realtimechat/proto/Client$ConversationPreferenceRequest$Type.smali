.class public final enum Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

.field public static final enum HIDE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

.field public static final enum MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

.field public static final enum SHOW:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

.field public static final enum UNMUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20160
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    const-string v1, "MUTE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20161
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    const-string v1, "UNMUTE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->UNMUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20162
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->HIDE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20163
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->SHOW:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20158
    new-array v0, v6, [Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->UNMUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->HIDE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->SHOW:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 20189
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 20198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20199
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->value:I

    .line 20200
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 20175
    packed-switch p0, :pswitch_data_12

    .line 20180
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 20176
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_4

    .line 20177
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->UNMUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_4

    .line 20178
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->HIDE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_4

    .line 20179
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->SHOW:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_4

    .line 20175
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 20158
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    .registers 1

    .prologue
    .line 20158
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 20172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->value:I

    return v0
.end method
