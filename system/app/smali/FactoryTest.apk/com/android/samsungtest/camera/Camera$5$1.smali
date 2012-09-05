.class Lcom/android/samsungtest/camera/Camera$5$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/Camera$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/samsungtest/camera/Camera$5;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camera/Camera$5;)V
    .registers 2
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$5$1;->this$1:Lcom/android/samsungtest/camera/Camera$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$5$1;->this$1:Lcom/android/samsungtest/camera/Camera$5;

    iget-object v0, v0, Lcom/android/samsungtest/camera/Camera$5;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$5$1;->this$1:Lcom/android/samsungtest/camera/Camera$5;

    iget-object v1, v1, Lcom/android/samsungtest/camera/Camera$5;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$3900(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    #calls: Lcom/android/samsungtest/camera/Camera;->updateStorageHint(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$1600(Lcom/android/samsungtest/camera/Camera;I)V

    .line 1345
    return-void
.end method
