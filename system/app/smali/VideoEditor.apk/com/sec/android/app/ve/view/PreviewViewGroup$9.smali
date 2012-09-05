.class Lcom/sec/android/app/ve/view/PreviewViewGroup$9;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$9;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1369
    const-string v0, "Touch Event check"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$9;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$64(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1372
    const/4 v0, 0x1

    .line 1374
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
