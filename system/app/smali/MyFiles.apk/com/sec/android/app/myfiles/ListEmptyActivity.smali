.class public Lcom/sec/android/app/myfiles/ListEmptyActivity;
.super Landroid/app/Activity;
.source "ListEmptyActivity.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 25
    const-string v2, "ListEmptyActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->setContentView(I)V

    .line 30
    const v2, 0x7f0c0018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    .local v1, text:Landroid/widget/TextView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 32
    const-string v2, "ListEmptyActivity"

    const-string v3, "SD card is being used as a mass storage device"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :goto_37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 43
    new-instance v2, Lcom/sec/android/app/myfiles/ListEmptyActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ListEmptyActivity$1;-><init>(Lcom/sec/android/app/myfiles/ListEmptyActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void

    .line 35
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_56
    const-string v2, "ListEmptyActivity"

    const-string v3, "No SD card inserted"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_37
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 79
    const-string v0, "ListEmptyActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListEmptyActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "ListEmptyActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasReadableStorage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 72
    const-string v0, "ListEmptyActivity"

    const-string v1, "hasReadableStorage"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->finish()V

    .line 75
    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "ListEmptyActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasReadableStorage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    const-string v0, "ListEmptyActivity"

    const-string v1, "hasReadableStorage"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListEmptyActivity;->finish()V

    .line 65
    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    return-void
.end method
