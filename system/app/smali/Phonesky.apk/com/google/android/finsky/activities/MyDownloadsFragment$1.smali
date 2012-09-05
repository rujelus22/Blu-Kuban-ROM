.class Lcom/google/android/finsky/activities/MyDownloadsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MyDownloadsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-object v1, v1, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer;->isMobileNetwork()Z

    move-result v0

    .line 138
    .local v0, newMobileDataState:Z
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-boolean v1, v1, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mMobileDataState:Z

    if-eq v0, v1, :cond_2f

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$000(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$000(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_2b
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iput-boolean v0, v1, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mMobileDataState:Z

    .line 145
    .end local v0           #newMobileDataState:Z
    :cond_2f
    return-void
.end method
