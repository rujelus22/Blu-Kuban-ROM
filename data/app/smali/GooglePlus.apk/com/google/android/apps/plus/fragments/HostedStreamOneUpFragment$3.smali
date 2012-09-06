.class Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;
.super Ljava/lang/Object;
.source "HostedStreamOneUpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mMuteProcessed:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$602(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Z)Z

    .line 711
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getSafeContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$702(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    const/16 v1, 0x11

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->showProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1100(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;I)V

    .line 715
    :cond_34
    return-void
.end method
