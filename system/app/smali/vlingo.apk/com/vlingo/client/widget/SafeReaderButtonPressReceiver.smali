.class public Lcom/vlingo/client/widget/SafeReaderButtonPressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafeReaderButtonPressReceiver.java"


# static fields
.field public static final EXTRA_WIDGET_CLICKED:Ljava/lang/String; = "widget_clicked"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    :goto_16
    return-void

    .line 36
    :cond_17
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isActivated()Z

    move-result v1

    if-nez v1, :cond_28

    .line 37
    const v1, 0x7f090443

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_16

    .line 38
    :cond_28
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    sget-object v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 47
    .end local v0           #i:Landroid/content/Intent;
    :cond_4e
    invoke-static {p1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->toggleDrivingMode(Landroid/content/Context;)V

    goto :goto_16
.end method
