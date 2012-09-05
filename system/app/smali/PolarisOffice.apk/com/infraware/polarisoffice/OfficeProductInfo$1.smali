.class Lcom/infraware/polarisoffice/OfficeProductInfo$1;
.super Ljava/lang/Object;
.source "OfficeProductInfo.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$1;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$1;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    check-cast p2, Lcom/infraware/common/update/UpdateService$UpdateBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/infraware/common/update/UpdateService$UpdateBinder;->getService()Lcom/infraware/common/update/UpdateService;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$0(Lcom/infraware/polarisoffice/OfficeProductInfo;Lcom/infraware/common/update/UpdateService;)V

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$1;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$0(Lcom/infraware/polarisoffice/OfficeProductInfo;Lcom/infraware/common/update/UpdateService;)V

    .line 86
    return-void
.end method
