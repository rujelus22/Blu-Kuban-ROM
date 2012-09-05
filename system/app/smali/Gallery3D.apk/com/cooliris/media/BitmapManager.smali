.class public Lcom/cooliris/media/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/BitmapManager$1;,
        Lcom/cooliris/media/BitmapManager$ThreadSet;,
        Lcom/cooliris/media/BitmapManager$ThreadStatus;,
        Lcom/cooliris/media/BitmapManager$State;
    }
.end annotation


# static fields
.field private static sManager:Lcom/cooliris/media/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/cooliris/media/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/cooliris/media/BitmapManager;->sManager:Lcom/cooliris/media/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 86
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/cooliris/media/BitmapManager$ThreadStatus;
    .registers 4
    .parameter "t"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/cooliris/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/BitmapManager$ThreadStatus;

    .line 93
    .local v0, status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    if-nez v0, :cond_16

    .line 94
    new-instance v0, Lcom/cooliris/media/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cooliris/media/BitmapManager$ThreadStatus;-><init>(Lcom/cooliris/media/BitmapManager$1;)V

    .line 95
    .restart local v0       #status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/cooliris/media/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 97
    :cond_16
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0           #status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/cooliris/media/BitmapManager;
    .registers 2

    .prologue
    .line 160
    const-class v1, Lcom/cooliris/media/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/cooliris/media/BitmapManager;->sManager:Lcom/cooliris/media/BitmapManager;

    if-nez v0, :cond_e

    .line 161
    new-instance v0, Lcom/cooliris/media/BitmapManager;

    invoke-direct {v0}, Lcom/cooliris/media/BitmapManager;-><init>()V

    sput-object v0, Lcom/cooliris/media/BitmapManager;->sManager:Lcom/cooliris/media/BitmapManager;

    .line 163
    :cond_e
    sget-object v0, Lcom/cooliris/media/BitmapManager;->sManager:Lcom/cooliris/media/BitmapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelThreadDecoding(Lcom/cooliris/media/BitmapManager$ThreadSet;)V
    .registers 5
    .parameter "threads"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/cooliris/media/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 125
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/cooliris/media/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 127
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_18
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/cooliris/media/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/cooliris/media/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 150
    .local v0, status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/cooliris/media/BitmapManager$State;->CANCEL:Lcom/cooliris/media/BitmapManager$State;

    iput-object v1, v0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mState:Lcom/cooliris/media/BitmapManager$State;

    .line 151
    iget-object v1, v0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    .line 152
    iget-object v1, v0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 156
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 157
    monitor-exit p0

    return-void

    .line 149
    .end local v0           #status:Lcom/cooliris/media/BitmapManager$ThreadStatus;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
