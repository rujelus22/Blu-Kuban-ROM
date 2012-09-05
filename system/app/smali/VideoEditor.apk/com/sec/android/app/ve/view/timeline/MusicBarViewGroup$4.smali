.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->x:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$7(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->y:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$8(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;I)V

    .line 301
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
