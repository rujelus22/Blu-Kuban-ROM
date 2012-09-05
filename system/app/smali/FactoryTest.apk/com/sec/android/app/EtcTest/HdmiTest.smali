.class public Lcom/sec/android/app/EtcTest/HdmiTest;
.super Landroid/app/Activity;
.source "HdmiTest.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/sec/android/app/EtcTest/HdmiTest$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/EtcTest/HdmiTest$1;-><init>(Lcom/sec/android/app/EtcTest/HdmiTest;)V

    iput-object v0, p0, Lcom/sec/android/app/EtcTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/EtcTest/HdmiTest;->setContentView(I)V

    .line 20
    const v2, 0x7f090059

    invoke-virtual {p0, v2}, Lcom/sec/android/app/EtcTest/HdmiTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 21
    .local v1, mLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.samsungtest.HDMITEST_STOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/sec/android/app/EtcTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/EtcTest/HdmiTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/EtcTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/EtcTest/HdmiTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 30
    const-string v1, "HDMI_TEST"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.samsungtest.HDMITEST_RUN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/sec/android/app/EtcTest/HdmiTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    return-void
.end method
