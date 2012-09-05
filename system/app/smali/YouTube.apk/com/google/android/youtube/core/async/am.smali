.class public abstract Lcom/google/android/youtube/core/async/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/b;

.field private final b:Lcom/google/android/youtube/core/async/ad;

.field private final c:Lcom/google/android/youtube/core/utils/c;

.field private final d:J


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/c;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/cache/b;

    .line 75
    iput-object p2, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/ad;

    .line 76
    iput-object p3, p0, Lcom/google/android/youtube/core/async/am;->c:Lcom/google/android/youtube/core/utils/c;

    .line 77
    iput-wide p4, p0, Lcom/google/android/youtube/core/async/am;->d:J

    .line 78
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/c;J)Lcom/google/android/youtube/core/async/am;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "cache may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "clock may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2e

    const-wide v0, 0x9a7ec800L

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2e

    const/4 v0, 0x1

    :goto_1f
    const-string v1, "time to live must be >=0 and <= 2592000000"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/async/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/async/ao;-><init>(Lcom/google/android/youtube/core/cache/b;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/utils/c;J)V

    return-object v0

    .line 52
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/am;)Lcom/google/android/youtube/core/utils/c;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->c:Lcom/google/android/youtube/core/utils/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/am;)Lcom/google/android/youtube/core/cache/b;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/cache/b;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/android/youtube/core/async/am;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/cache/b;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Timestamped;

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/async/am;->c:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v1

    .line 93
    if-eqz v0, :cond_31

    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_31

    iget-wide v3, v0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    iget-wide v5, p0, Lcom/google/android/youtube/core/async/am;->d:J

    add-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-ltz v1, :cond_31

    .line 97
    iget-object v0, v0, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :goto_30
    return-void

    .line 101
    :cond_31
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/ad;

    if-eqz v0, :cond_40

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/ad;

    new-instance v1, Lcom/google/android/youtube/core/async/an;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/an;-><init>(Lcom/google/android/youtube/core/async/am;Lcom/google/android/youtube/core/async/g;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_30

    .line 107
    :cond_40
    new-instance v0, Lcom/google/android/youtube/core/async/NotFoundException;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/NotFoundException;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_30
.end method
