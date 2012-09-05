.class Lcom/android/task/TaskViewActivity$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TaskViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskViewActivity;


# direct methods
.method constructor <init>(Lcom/android/task/TaskViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/task/TaskViewActivity$4;->this$0:Lcom/android/task/TaskViewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/task/TaskViewActivity$4;->this$0:Lcom/android/task/TaskViewActivity;

    #calls: Lcom/android/task/TaskViewActivity;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/task/TaskViewActivity;->access$700(Lcom/android/task/TaskViewActivity;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
