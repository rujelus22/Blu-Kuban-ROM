.class public Lcom/sec/android/app/music/widget/SweepableListView;
.super Lcom/sec/android/app/music/widget/TwIndexListView;
.source "SweepableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static sLimitMove:I


# instance fields
.field private mDragListener:Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;

.field private mDuringAnimation:Z

.field private mIsDragged:Z

.field private mIsSliding:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/sec/android/app/music/widget/SweepableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/SweepableListView;->CLASSNAME:Ljava/lang/String;

    .line 207
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/widget/SweepableListView;->sLimitMove:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/TwIndexListView;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SweepableListView;->mIsSliding:Z

    .line 271
    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SweepableListView;->mDuringAnimation:Z

    .line 273
    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SweepableListView;->mIsDragged:Z

    .line 79
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 97
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 98
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 101
    .local v2, y:I
    invoke-super {p0, p1}, Lcom/sec/android/app/music/widget/TwIndexListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method protected setOnDragListener(Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/music/widget/SweepableListView;->mDragListener:Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;

    .line 88
    return-void
.end method
