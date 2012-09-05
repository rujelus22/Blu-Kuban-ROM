.class public Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LearnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;


# direct methods
.method public constructor <init>(Lcom/lifevibes/trimapp/widget/DoubleSeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;->this$0:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lifevibes/trimapp/widget/DoubleSeekBar$LearnGestureListener;->this$0:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    #calls: Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->startLongPress()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->access$000(Lcom/lifevibes/trimapp/widget/DoubleSeekBar;)V

    .line 347
    return-void
.end method
