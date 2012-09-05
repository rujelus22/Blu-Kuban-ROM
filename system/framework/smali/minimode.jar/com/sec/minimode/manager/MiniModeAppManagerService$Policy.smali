.class abstract Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
.super Ljava/lang/Object;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Policy"
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final DEBUG_VERBOSE:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mLastPosition:Landroid/graphics/Rect;

.field protected mOccupiedPosionListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x2710

    .line 68
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "MiniModeAppManager::Policy"

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    return-void
.end method

.method private dumpOccupiedPosionList()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method


# virtual methods
.method public addPosion(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .registers 5
    .parameter "cn"
    .parameter "newPosition"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 87
    :goto_4
    return-void

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 85
    :try_start_8
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 135
    :try_start_3
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .registers 5
    .parameter "cn"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 128
    .local v0, targetPosition:Landroid/graphics/Rect;
    monitor-exit v2

    return-object v0

    .line 129
    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isOccupiedPosition(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v0, newPosition:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 152
    :try_start_9
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 154
    const/4 v1, 0x1

    monitor-exit v2

    .line 159
    :goto_13
    return v1

    .line 156
    :cond_14
    monitor-exit v2

    goto :goto_13

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removePosition(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "cn"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 97
    :goto_4
    return-void

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 95
    :try_start_8
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v1

    goto :goto_4

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setLastPosition(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    monitor-enter v1

    .line 143
    :try_start_3
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mLastPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public updatePosition(Landroid/content/ComponentName;II)V
    .registers 7
    .parameter "cn"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 122
    :goto_4
    return-void

    .line 109
    :cond_5
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 110
    :try_start_8
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->mOccupiedPosionListMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 112
    .local v0, targetPosition:Landroid/graphics/Rect;
    if-eqz v0, :cond_16

    .line 113
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 114
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 116
    :cond_16
    monitor-exit v2

    goto :goto_4

    .end local v0           #targetPosition:Landroid/graphics/Rect;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method
