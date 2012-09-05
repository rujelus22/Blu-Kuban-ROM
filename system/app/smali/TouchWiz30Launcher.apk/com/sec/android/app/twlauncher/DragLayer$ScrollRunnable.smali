.class Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field private mIsQueued:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/DragLayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .registers 3
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1143
    return-void
.end method


# virtual methods
.method public isQueued()Z
    .registers 2

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    return v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    .line 1147
    .local v0, ds:Lcom/sec/android/app/twlauncher/DragScroller;
    if-eqz v0, :cond_15

    .line 1148
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    .line 1149
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_16

    .line 1150
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollLeft()V

    .line 1154
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1156
    :cond_15
    return-void

    .line 1152
    :cond_16
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollRight()V

    goto :goto_12
.end method

.method setDirection(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 1181
    iput p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    .line 1182
    return-void
.end method

.method public setIsQueued(Z)V
    .registers 4
    .parameter "val"

    .prologue
    .line 1159
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    if-eq p1, v1, :cond_11

    .line 1162
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    .line 1163
    .local v0, ds:Lcom/sec/android/app/twlauncher/DragScroller;
    if-eqz v0, :cond_11

    .line 1164
    if-nez p1, :cond_14

    .line 1165
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    .line 1173
    .end local v0           #ds:Lcom/sec/android/app/twlauncher/DragScroller;
    :cond_11
    :goto_11
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    .line 1174
    return-void

    .line 1166
    .restart local v0       #ds:Lcom/sec/android/app/twlauncher/DragScroller;
    :cond_14
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_1d

    .line 1167
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_11

    .line 1169
    :cond_1d
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_11
.end method
