.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    #calls: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState()V
    invoke-static {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$000(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    .line 96
    return-void
.end method
