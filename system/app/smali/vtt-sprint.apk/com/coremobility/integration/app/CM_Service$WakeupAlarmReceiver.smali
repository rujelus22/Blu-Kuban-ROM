.class public final Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/app/CM_Service;


# direct methods
.method public constructor <init>(Lcom/coremobility/integration/app/CM_Service;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/integration/app/CM_Service$WakeupAlarmReceiver;->a:Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->m()Z

    const-string v0, "com.coremobility.app.vnotes.SERVICE_DOPROCESS"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
