.class public Lcom/google/android/apps/plus/phone/StreamOneUpActivity;
.super Lcom/google/android/apps/plus/phone/HostActivity;
.source "StreamOneUpActivity.java"


# instance fields
.field private mFragment:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;-><init>()V

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 46
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    if-eqz v0, :cond_b

    .line 47
    check-cast p1, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;->mFragment:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    .line 49
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;->mFragment:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->onCancelRequested()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    if-nez p1, :cond_18

    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notif_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, notificationId:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamOneUpActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .end local v0           #notificationId:Ljava/lang/String;
    :cond_18
    return-void
.end method
