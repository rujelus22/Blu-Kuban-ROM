.class public final enum Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InviteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field public static final enum INVITE:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field public static final enum NEW:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field public static final enum UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;",
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

    .line 17376
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17377
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->NEW:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17378
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    const-string v1, "INVITE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->INVITE:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17374
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->NEW:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->INVITE:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    .line 17402
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 17411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17412
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->value:I

    .line 17413
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 2
    .parameter "value"

    .prologue
    .line 17389
    packed-switch p0, :pswitch_data_e

    .line 17393
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 17390
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    goto :goto_4

    .line 17391
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->NEW:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    goto :goto_4

    .line 17392
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->INVITE:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    goto :goto_4

    .line 17389
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 2
    .parameter

    .prologue
    .line 17374
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
    .registers 1

    .prologue
    .line 17374
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 17386
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;->value:I

    return v0
.end method
