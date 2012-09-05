.class public Lcom/android/email/activity/setup/AccountSetupActivity;
.super Landroid/app/Activity;
.source "AccountSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;

    .line 38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_7

    .line 47
    :goto_3
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->save(Landroid/os/Bundle;)V

    .line 48
    return-void

    .line 44
    :catch_7
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
