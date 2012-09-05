.class Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;
.super Ljava/lang/Object;
.source "CheckMessageSentOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->checkMessageSentAfterTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    iget-wide v2, v2, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mMessageRowId:J

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->checkMessageSent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)I

    .line 89
    return-void
.end method
