.class public Lcom/coremobility/app/vnotes/CM_MessageReceiver;
.super Lcom/coremobility/integration/message/CM_SMSReceiver;


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/integration/message/CM_SMSReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    sget-boolean v0, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a:Z

    const-string v0, "com.coremobility.app.vnotes.OMADM_PARAM_CHANGED"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/16 v4, 0x17

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "BOOT_COMPLETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/coremobility/integration/app/CM_App;->a(Z)V

    :goto_1a
    return-void

    :cond_1b
    const-string v1, "com.sprint.android.SPRINTEXTENSION_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_2b
    const-string v0, "SPRINTEXTENSION_STARTED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :goto_43
    if-eqz v0, :cond_55

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "com.coremobility.app.vnotes.OMADM_PARAM_CHANGED"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    goto :goto_1a

    :cond_51
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto :goto_43

    :cond_55
    sput-boolean v3, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a:Z

    goto :goto_1a

    :cond_58
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/message/CM_SMSReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1a
.end method
