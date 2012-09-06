.class public Lcom/google/android/apps/plus/phone/EventActivity;
.super Lcom/google/android/apps/plus/phone/HostActivity;
.source "EventActivity.java"


# instance fields
.field private mCurrentSpinnerIndex:I

.field private mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    return-void
.end method


# virtual methods
.method protected createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;-><init>()V

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 140
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->EVENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 49
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0300d6

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0803d2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0803d3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EventActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    if-nez p1, :cond_3f

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notif_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, notificationId:Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    .end local v0           #notificationId:Ljava/lang/String;
    :cond_3f
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onPrimarySpinnerSelectionChange(I)V

    .line 97
    iget v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    if-ne v1, p1, :cond_8

    .line 123
    :cond_7
    :goto_7
    return-void

    .line 102
    :cond_8
    packed-switch p1, :pswitch_data_20

    .line 114
    const/4 v0, 0x0

    .line 119
    .local v0, fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    :goto_c
    if-eqz v0, :cond_7

    .line 120
    iput p1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EventActivity;->replaceFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V

    goto :goto_7

    .line 104
    .end local v0           #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    :pswitch_14
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;-><init>()V

    .line 105
    .restart local v0       #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    goto :goto_c

    .line 109
    .end local v0           #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    :pswitch_1a
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;-><init>()V

    .line 110
    .restart local v0       #fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    goto :goto_c

    .line 102
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "spinnerIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    .line 88
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/HostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "spinnerIndex"

    iget v1, p0, Lcom/google/android/apps/plus/phone/EventActivity;->mCurrentSpinnerIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-void
.end method
