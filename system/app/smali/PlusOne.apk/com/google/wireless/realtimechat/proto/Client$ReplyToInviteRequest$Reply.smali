.class public final enum Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

.field public static final enum ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32202
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32200
    new-array v0, v3, [Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 32222
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 32231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32232
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->value:I

    .line 32233
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 2
    .parameter "value"

    .prologue
    .line 32211
    packed-switch p0, :pswitch_data_8

    .line 32213
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 32212
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    goto :goto_4

    .line 32211
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 2
    .parameter

    .prologue
    .line 32200
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    .registers 1

    .prologue
    .line 32200
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 32208
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->value:I

    return v0
.end method
