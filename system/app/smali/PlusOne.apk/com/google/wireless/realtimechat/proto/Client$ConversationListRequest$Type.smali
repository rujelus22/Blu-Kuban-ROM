.class public final enum Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

.field public static final enum ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

.field public static final enum SINCE:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23936
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    const-string v1, "ID"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 23937
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    const-string v1, "SINCE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->SINCE:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 23934
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->SINCE:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    .line 23959
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 23968
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23969
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->value:I

    .line 23970
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 23947
    packed-switch p0, :pswitch_data_c

    .line 23950
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 23948
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    goto :goto_4

    .line 23949
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->SINCE:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    goto :goto_4

    .line 23947
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 2
    .parameter

    .prologue
    .line 23934
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
    .registers 1

    .prologue
    .line 23934
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 23944
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->value:I

    return v0
.end method
