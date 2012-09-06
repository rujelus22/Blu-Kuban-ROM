.class public Lcom/intangibleobject/securesettings/helper/HelperReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    sget-object v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    const-string v1, "Received Intent"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->b:Landroid/content/Context;

    invoke-static {}, Lcom/intangibleobject/securesettings/library/b;->d()Z

    move-result v0

    if-nez v0, :cond_1b

    const v0, 0x7f040001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/intangibleobject/securesettings/library/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intangibleobject.securesettings.intent.action.PING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    const-string v1, "Received Ping"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intangibleobject.securesettings.intent.action.RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1a

    :cond_39
    const-string v1, "com.intangibleobject.securesettings.intent.action.DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    const-string v0, "pref_debug"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received Debug change. Enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_debug"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intangibleobject.securesettings.intent.action.RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1a

    :cond_79
    const-string v1, "com.intangibleobject.securesettings.intent.action.FIRE_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    sget-object v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    const-string v1, "Received unexpected Intent action %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_96
    :try_start_96
    invoke-static {p2}, Lcom/intangibleobject/securesettings/library/a;->a(Landroid/content/Intent;)Z

    const-string v0, "com.intangibleobject.securesettings.plugin.intent.BUNDLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/intangibleobject/securesettings/library/a;->a(Landroid/os/Bundle;)Z

    if-nez v0, :cond_b9

    sget-object v0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    const-string v1, "Received null BUNDLE"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ab} :catch_ad

    goto/16 :goto_1a

    :catch_ad
    move-exception v0

    sget-object v1, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_b9
    :try_start_b9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.intangibleobject.securesettings.intent.action.RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->a:Ljava/lang/String;

    const-string v2, "Passing bundle to Helper library"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intangibleobject/securesettings/helper/HelperReceiver;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;Landroid/os/Bundle;)Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cf} :catch_ad

    goto/16 :goto_1a
.end method
