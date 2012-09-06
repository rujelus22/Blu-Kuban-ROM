.class public Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    const-string v0, "SecureSettingsHelper.UnlockPatternReceiver"

    const-string v1, "User Present - Unlocking Phone"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lock_pattern_autolock"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intangibleobject/securesettings/library/UnlockPatternService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v1, "SecureSettingsHelper.UnlockPatternReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
