.class public Lcom/sec/android/app/twlauncher/LauncherDragInfo;
.super Ljava/lang/Object;
.source "LauncherDragInfo.java"


# instance fields
.field private mDelayRemovingFromSourceWhenDrop:Z

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

.field private mIsLauncherAppWidgetInfo:Z

.field private mRunForDelayedRemoving:Ljava/lang/Runnable;

.field private mRunForDelayedRemovingReverted:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 4
    .parameter "draggingItemInfo"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    .line 20
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 30
    if-nez p1, :cond_17

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_17
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V
    .registers 5
    .parameter "draggingItemInfo"
    .parameter "isLauncherAppWidgetInfo"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    .line 20
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 45
    if-nez p1, :cond_17

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_17
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 49
    iput-boolean p2, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDragSource()Lcom/sec/android/app/twlauncher/DragSource;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    return-object v0
.end method

.method public getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    return-object v0
.end method

.method public isLauncherAppWidgetInfo()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    return v0
.end method

.method public setDelayRemovingFromSourceWhenDrop(Z)V
    .registers 2
    .parameter "delay"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    .line 74
    return-void
.end method

.method public setDragSource(Lcom/sec/android/app/twlauncher/DragSource;)V
    .registers 2
    .parameter "aDragSource"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 38
    return-void
.end method

.method public shouldDelayRemovingFromSourceWhenDrop()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    return v0
.end method
