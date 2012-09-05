.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/DragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragListenerImpl"
.end annotation


# instance fields
.field private dragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->onDragEnd(FF)V

    .line 100
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mParent:Lcom/sec/android/app/ve/view/DragLayer;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$2(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 102
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->onDragStart(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->dragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->setDragView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V

    .line 113
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->onDragging(FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->dragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;->viewDragging(FFLandroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method public setDragView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V
    .registers 2
    .parameter "dragView"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragListenerImpl;->dragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    .line 97
    return-void
.end method
