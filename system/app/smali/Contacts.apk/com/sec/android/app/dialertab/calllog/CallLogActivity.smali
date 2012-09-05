.class public Lcom/sec/android/app/dialertab/calllog/CallLogActivity;
.super Landroid/app/Activity;
.source "CallLogActivity.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragment()Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setContentView(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->setDefaultKeyMode(I)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_2e

    .line 78
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_7
    return v3

    .line 65
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 66
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    :try_start_27
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 74
    :goto_2a
    const/4 v3, 0x1

    goto :goto_7

    .line 72
    :catch_2c
    move-exception v3

    goto :goto_2a

    .line 63
    :pswitch_data_2e
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_24

    .line 99
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_7
    return v1

    .line 86
    :pswitch_8
    :try_start_8
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 88
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_21

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->callSelectedEntry()V

    .line 97
    const/4 v1, 0x1

    goto :goto_7

    .line 92
    :catch_21
    move-exception v1

    goto :goto_1a

    .line 83
    nop

    :pswitch_data_24
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method
