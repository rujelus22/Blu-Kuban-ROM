.class Lcom/sec/minimode/manager/MiniModeAppManagerService$1;
.super Landroid/os/RemoteCallbackList;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 214
    check-cast p1, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->onCallbackDied(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    return-void
.end method

.method public onCallbackDied(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 218
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    #calls: Lcom/sec/minimode/manager/MiniModeAppManagerService;->removeDiedCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    invoke-static {v0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$300(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 219
    return-void
.end method
