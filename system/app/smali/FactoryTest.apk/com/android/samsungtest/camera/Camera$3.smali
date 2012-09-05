.class Lcom/android/samsungtest/camera/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$3;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$3;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 777
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$3;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/samsungtest/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 779
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$3;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/Camera;->finish()V

    .line 780
    return-void
.end method
