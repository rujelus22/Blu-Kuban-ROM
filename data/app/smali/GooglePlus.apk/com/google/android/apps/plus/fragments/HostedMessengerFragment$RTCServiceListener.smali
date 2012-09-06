.class Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "HostedMessengerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->access$102(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public onConversationsLoaded(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 187
    :cond_21
    return-void
.end method

.method public onDisconnected(I)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->mConnected:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->access$102(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;Landroid/view/View;)V

    .line 199
    return-void
.end method
