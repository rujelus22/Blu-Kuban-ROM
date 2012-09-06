.class public Lcom/google/android/apps/googlevoice/vvm/receiver/CallLogChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, outgoing:Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->copyExtrasBetween(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 24
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    .end local v0           #outgoing:Landroid/content/Intent;
    :cond_24
    return-void
.end method
