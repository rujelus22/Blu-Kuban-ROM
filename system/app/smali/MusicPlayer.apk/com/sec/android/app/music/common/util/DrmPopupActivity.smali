.class public Lcom/sec/android/app/music/common/util/DrmPopupActivity;
.super Landroid/app/Activity;
.source "DrmPopupActivity.java"


# instance fields
.field mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

.field mProgress:Landroid/app/ProgressDialog;

.field private final macquireRightsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    .line 71
    new-instance v0, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/DrmPopupActivity$1;-><init>(Lcom/sec/android/app/music/common/util/DrmPopupActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->macquireRightsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 27
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    invoke-direct {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    .line 32
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.string"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupStrings:[I

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 36
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupRedirectUrl:Landroid/net/Uri;

    .line 38
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    .line 39
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.filepath"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.remain.counts"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->remainCount:I

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.from"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFrom:I

    .line 42
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->list:[J

    .line 43
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    const-string v3, "popup.list.position"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->position:I

    .line 45
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_a7

    .line 46
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->macquireRightsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.music.acquiringrights.statechanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    const v3, 0x7f0900df

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 53
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 59
    :goto_9f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->setVolumeControlStream(I)V

    .line 61
    return-void

    .line 55
    :cond_a7
    new-instance v1, Lcom/sec/android/app/music/common/util/DrmServicePopup;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;)V

    .line 56
    .local v1, popup:Lcom/sec/android/app/music/common/util/DrmServicePopup;
    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->show()V

    goto :goto_9f
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->mPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    iget v0, v0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_d

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->macquireRightsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/util/DrmPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    return-void
.end method
