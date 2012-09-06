.class Lcom/google/android/music/athome/AtHomeDevicePlayback$9;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$9;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$9;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleError(Landroid/support/place/rpc/RpcError;)V
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$6800(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/rpc/RpcError;)V

    .line 1661
    return-void
.end method
