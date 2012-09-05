.class Lcom/vlingo/client/safereader/SafeReaderService$1$15;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->setBluetoothConnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$15;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-boolean p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$15;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$15;->val$isConnected:Z

    invoke-static {v0}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->updateHeadsetStateSetting(Z)V

    .line 361
    return-void
.end method
