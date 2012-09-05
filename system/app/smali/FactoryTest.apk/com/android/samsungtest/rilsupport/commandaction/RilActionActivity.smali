.class public Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;
.super Landroid/app/Activity;
.source "RilActionActivity.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity$1;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private startCamera()V
    .registers 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .local v0, mBatteryIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.stopcamera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionActivity;->startCamera()V

    .line 20
    return-void
.end method
