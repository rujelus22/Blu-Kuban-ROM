.class Lcom/sec/android/app/camera/CameraBaseIndicators$1;
.super Landroid/view/OrientationEventListener;
.source "CameraBaseIndicators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraBaseIndicators;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraBaseIndicators;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 6
    .parameter "orientation"

    .prologue
    .line 377
    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 397
    :cond_3
    :goto_3
    return-void

    .line 381
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #calls: Lcom/sec/android/app/camera/CameraBaseIndicators;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 383
    .local v0, degree:I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_12

    .line 384
    add-int/lit16 v0, v0, -0x168

    .line 386
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget v1, v1, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-eq v0, v1, :cond_3

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget v2, v2, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    #getter for: Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V
    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->access$200(Lcom/sec/android/app/camera/CameraBaseIndicators;IILandroid/view/View;)V

    .line 392
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;->this$0:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput v0, v1, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_3d} :catch_3e

    goto :goto_3

    .line 394
    .end local v0           #degree:I
    :catch_3e
    move-exception v1

    goto :goto_3
.end method
