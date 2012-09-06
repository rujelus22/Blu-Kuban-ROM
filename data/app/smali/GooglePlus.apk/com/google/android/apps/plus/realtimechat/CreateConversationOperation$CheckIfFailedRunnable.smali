.class Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;
.super Ljava/lang/Object;
.source "CreateConversationOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckIfFailedRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;-><init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;->this$0:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    iget-wide v2, v2, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mMessageRowId:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->checkMessageSent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)I

    .line 112
    return-void
.end method
