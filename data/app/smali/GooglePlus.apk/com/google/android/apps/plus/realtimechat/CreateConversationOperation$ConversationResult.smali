.class public Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
.super Ljava/lang/Object;
.source "CreateConversationOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationResult"
.end annotation


# instance fields
.field public mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field public mConversationRowId:Ljava/lang/Long;

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V
    .registers 4
    .parameter
    .parameter "conversationRowId"
    .parameter "conversation"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 36
    return-void
.end method
