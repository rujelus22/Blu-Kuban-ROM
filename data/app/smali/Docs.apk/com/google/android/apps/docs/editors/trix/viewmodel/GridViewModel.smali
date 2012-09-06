.class public Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;
.super LEQ;
.source "GridViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LEQ;"
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private final a:LEP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEP",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->b:Z

    .line 105
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a()V

    .line 106
    return-void
.end method

.method public constructor <init>(Lws;LEP;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws;",
            "LEP",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, LEQ;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:Ljava/util/Stack;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:Landroid/util/SparseArray;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:LEP;

    .line 42
    invoke-static {p0}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a(LEQ;)J

    move-result-wide v0

    invoke-interface {p1}, Lws;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->start(JJ)V

    .line 43
    return-void
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 79
    const-class v1, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->b:Z

    if-nez v0, :cond_12

    .line 80
    const-string v0, "android_trix"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->init()V

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->b:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 84
    :cond_12
    monitor-exit v1

    return-void

    .line 79
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native init()V
.end method

.method private native start(JJ)V
.end method


# virtual methods
.method public a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    const/high16 v0, 0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public a(II)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a(II)I

    move-result v1

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_12
    return-object v0

    .line 98
    :cond_13
    new-instance v0, LEV;

    invoke-direct {v0, p1, p2}, LEV;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a(LEV;)I

    move-result v0

    .line 99
    if-ne v0, v1, :cond_29

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, LafQ;->b(Z)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/trix/viewmodel/GridViewModel;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    .line 99
    :cond_29
    const/4 v0, 0x0

    goto :goto_1f
.end method
