.class Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;
.super Ljava/lang/Object;
.source "SendMessageGeneralOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->checkMessageSentAfterTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v2, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$200(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$400(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    :goto_1b
    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->checkMessageSent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)I

    .line 266
    return-void

    .line 263
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method
