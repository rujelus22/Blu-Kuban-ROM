.class Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;
.super Ljava/lang/Object;
.source "SystemProperties.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysPropServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/SystemProperties;


# direct methods
.method constructor <init>(Lcom/sprint/internal/SystemProperties;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    invoke-static {p2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 29
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    iget-object v0, v0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v0, :cond_14

    .line 31
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    const/4 v1, 0x0

    #setter for: Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z
    invoke-static {v0, v1}, Lcom/sprint/internal/SystemProperties;->access$002(Lcom/sprint/internal/SystemProperties;Z)Z

    .line 33
    :cond_14
    invoke-static {}, Lcom/sprint/internal/SystemProperties;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 38
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;->this$0:Lcom/sprint/internal/SystemProperties;

    const/4 v1, 0x0

    #setter for: Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z
    invoke-static {v0, v1}, Lcom/sprint/internal/SystemProperties;->access$002(Lcom/sprint/internal/SystemProperties;Z)Z

    .line 39
    invoke-static {}, Lcom/sprint/internal/SystemProperties;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
