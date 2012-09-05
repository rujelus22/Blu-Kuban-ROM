.class Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/samsung/SystemInfo/SystemInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAppWindowReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/samsung/SystemInfo/SystemInfoService;


# direct methods
.method private constructor <init>(Landroid/samsung/SystemInfo/SystemInfoService;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/samsung/SystemInfo/SystemInfoService;Landroid/samsung/SystemInfo/SystemInfoService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;-><init>(Landroid/samsung/SystemInfo/SystemInfoService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.activity.displayed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 80
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    const/4 v1, 0x0

    #setter for: Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B
    invoke-static {v0, v1}, Landroid/samsung/SystemInfo/SystemInfoService;->access$102(Landroid/samsung/SystemInfo/SystemInfoService;B)B

    .line 81
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "focusedapp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/samsung/SystemInfo/SystemInfoService;->WindowState:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/samsung/SystemInfo/SystemInfoService;->access$202(Landroid/samsung/SystemInfo/SystemInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    #calls: Landroid/samsung/SystemInfo/SystemInfoService;->DisplaySystemInfo()V
    invoke-static {v0}, Landroid/samsung/SystemInfo/SystemInfoService;->access$300(Landroid/samsung/SystemInfo/SystemInfoService;)V

    .line 84
    :cond_2a
    return-void
.end method
