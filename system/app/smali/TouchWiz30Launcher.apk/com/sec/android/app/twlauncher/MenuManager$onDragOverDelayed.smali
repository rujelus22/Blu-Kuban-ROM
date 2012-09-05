.class Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onDragOverDelayed"
.end annotation


# instance fields
.field private mDragInfo:Ljava/lang/Object;

.field private mId:J

.field private mSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mStart:J

.field private mX:I

.field private mXOffset:I

.field private mY:I

.field private mYOffset:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1923
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mX:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mY:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mXOffset:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mYOffset:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mDragInfo:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1956
    :cond_19
    return-void
.end method

.method public setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 1935
    iput p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mX:I

    .line 1936
    iput p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mY:I

    .line 1937
    iput p4, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mXOffset:I

    .line 1938
    iput p5, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mYOffset:I

    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 1940
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mId:J

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->mStart:J

    .line 1942
    return-void
.end method
