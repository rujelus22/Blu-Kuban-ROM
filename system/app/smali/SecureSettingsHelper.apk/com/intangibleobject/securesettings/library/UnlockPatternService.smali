.class public Lcom/intangibleobject/securesettings/library/UnlockPatternService;
.super Landroid/app/Service;


# instance fields
.field final a:Landroid/content/IntentFilter;

.field final b:Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->a:Landroid/content/IntentFilter;

    new-instance v0, Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;

    invoke-direct {v0}, Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;-><init>()V

    iput-object v0, p0, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->b:Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SecureSettingsHelper.HelperReceiver"

    const-string v1, "Registering User Presence Receiver"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->b:Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;

    iget-object v1, p0, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "SecureSettingsHelper.HelperReceiver"

    const-string v1, "Unregistering User Presence Receiver"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->b:Lcom/intangibleobject/securesettings/library/UnlockPatternReceiver;

    invoke-virtual {p0, v0}, Lcom/intangibleobject/securesettings/library/UnlockPatternService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "SecureSettingsHelper.HelperReceiver"

    const-string v1, "Unlock Service destroyed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
