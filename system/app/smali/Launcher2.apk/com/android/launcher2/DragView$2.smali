.class Lcom/android/launcher2/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/launcher2/DragView$2;->this$0:Lcom/android/launcher2/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher2/DragView$2;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;
    invoke-static {v0}, Lcom/android/launcher2/DragView;->access$300(Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragView$2;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 228
    return-void
.end method
