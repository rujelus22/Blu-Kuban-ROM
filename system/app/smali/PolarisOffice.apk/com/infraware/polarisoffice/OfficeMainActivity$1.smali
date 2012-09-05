.class Lcom/infraware/polarisoffice/OfficeMainActivity$1;
.super Ljava/lang/Object;
.source "OfficeMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    check-cast p2, Lcom/infraware/common/update/UpdateService$UpdateBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/infraware/common/update/UpdateService$UpdateBinder;->getService()Lcom/infraware/common/update/UpdateService;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->access$0(Lcom/infraware/polarisoffice/OfficeMainActivity;Lcom/infraware/common/update/UpdateService;)V

    .line 69
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$1;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->access$0(Lcom/infraware/polarisoffice/OfficeMainActivity;Lcom/infraware/common/update/UpdateService;)V

    .line 73
    return-void
.end method
