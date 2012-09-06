.class public final Lcom/google/android/youtube/core/model/proto/l;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/l;


# instance fields
.field private b:Ljava/util/List;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2788
    new-instance v0, Lcom/google/android/youtube/core/model/proto/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/l;-><init>(B)V

    .line 2789
    sput-object v0, Lcom/google/android/youtube/core/model/proto/l;->a:Lcom/google/android/youtube/core/model/proto/l;

    .line 2791
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2492
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 2508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    .line 2535
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/l;->c:I

    .line 2493
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 2495
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 2508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    .line 2535
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/l;->c:I

    .line 2495
    return-void
.end method

.method synthetic constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 2489
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/l;
    .registers 1

    .prologue
    .line 2499
    sget-object v0, Lcom/google/android/youtube/core/model/proto/l;->a:Lcom/google/android/youtube/core/model/proto/l;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/l;
    .registers 2
    .parameter

    .prologue
    .line 2574
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/m;->a()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/m;->a(Ljava/io/InputStream;)Lcom/google/protobuf/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/m;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/m;->a(Lcom/google/android/youtube/core/model/proto/m;)Lcom/google/android/youtube/core/model/proto/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/l;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2489
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 2529
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/l;->j()I

    .line 2530
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 2531
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->a(ILcom/google/protobuf/j;)V

    goto :goto_9

    .line 2533
    :cond_1a
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 2522
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/n;->u()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2524
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final j()I
    .registers 5

    .prologue
    .line 2537
    iget v1, p0, Lcom/google/android/youtube/core/model/proto/l;->c:I

    .line 2538
    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 2546
    :goto_5
    return v1

    .line 2540
    :cond_6
    const/4 v0, 0x0

    .line 2541
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/n;

    .line 2542
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->b(ILcom/google/protobuf/j;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_e

    .line 2545
    :cond_22
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/l;->c:I

    goto :goto_5
.end method
