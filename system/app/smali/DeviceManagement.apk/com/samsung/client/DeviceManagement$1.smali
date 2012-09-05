.class Lcom/samsung/client/DeviceManagement$1;
.super Landroid/os/CountDownTimer;
.source "DeviceManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DeviceManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DeviceManagement;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 7

    .prologue
    .line 64
    sget-object v3, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v1

    .line 65
    .local v1, rootEnabled:Z
    iget-object v3, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v3}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isServiceConnected()Z

    move-result v2

    .line 67
    .local v2, svcConnected:Z
    const-string v3, "DeviceManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "svcConnectedTimer:onFinish "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v1, :cond_2f

    .line 100
    :goto_2e
    return-void

    .line 74
    :cond_2f
    if-eqz v2, :cond_3d

    .line 75
    sget-object v3, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 76
    iget-object v3, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    #calls: Lcom/samsung/client/DeviceManagement;->checksessionactive()V
    invoke-static {v3}, Lcom/samsung/client/DeviceManagement;->access$100(Lcom/samsung/client/DeviceManagement;)V

    goto :goto_2e

    .line 78
    :cond_3d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    const v5, 0x7f050071

    invoke-virtual {v4, v5}, Lcom/samsung/client/DeviceManagement;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050016

    new-instance v5, Lcom/samsung/client/DeviceManagement$1$1;

    invoke-direct {v5, p0}, Lcom/samsung/client/DeviceManagement$1$1;-><init>(Lcom/samsung/client/DeviceManagement$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/samsung/client/DeviceManagement$1$2;

    invoke-direct {v3, p0}, Lcom/samsung/client/DeviceManagement$1$2;-><init>(Lcom/samsung/client/DeviceManagement$1;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2e
.end method

.method public onTick(J)V
    .registers 8
    .parameter "millisUntilFinished"

    .prologue
    .line 46
    sget-object v2, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    .line 47
    .local v0, rootEnabled:Z
    iget-object v2, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v2}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->isServiceConnected()Z

    move-result v1

    .line 49
    .local v1, svcConnected:Z
    const-string v2, "DeviceManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " svcConnectedTimer onTick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz v0, :cond_2f

    .line 60
    :cond_2e
    :goto_2e
    return-void

    .line 55
    :cond_2f
    if-eqz v1, :cond_2e

    .line 56
    iget-object v2, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    iget-object v2, v2, Lcom/samsung/client/DeviceManagement;->svcConnectedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 57
    sget-object v2, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 58
    iget-object v2, p0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    #calls: Lcom/samsung/client/DeviceManagement;->checksessionactive()V
    invoke-static {v2}, Lcom/samsung/client/DeviceManagement;->access$100(Lcom/samsung/client/DeviceManagement;)V

    goto :goto_2e
.end method
