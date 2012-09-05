.class public Lcom/android/mms/ui/CMASAlertActivity;
.super Lcom/android/mms/ui/CMASAlertFullScreen;
.source "CMASAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/mms/ui/CMASAlertFullScreen;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "CMASAlertActivity"

    const-string v1, "CMASAlertActivity onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->onDestroy()V

    .line 93
    const-string v0, "CMASAlertActivity"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 53
    const-string v0, "CMASAlertActivity"

    const-string v1, "CMASAlertActivity onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_f

    const/16 v0, 0x54

    if-ne p1, v0, :cond_11

    .line 58
    :cond_f
    const/4 v0, 0x1

    .line 61
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/CMASAlertFullScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->onPause()V

    .line 79
    const-string v0, "CMASAlertActivity"

    const-string v1, " onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->onRestart()V

    .line 73
    const-string v0, "CMASAlertActivity"

    const-string v1, " onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->onResume()V

    .line 67
    const-string v0, "CMASAlertActivity"

    const-string v1, " onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/mms/ui/CMASAlertFullScreen;->onStop()V

    .line 86
    const-string v0, "CMASAlertActivity"

    const-string v1, " onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
