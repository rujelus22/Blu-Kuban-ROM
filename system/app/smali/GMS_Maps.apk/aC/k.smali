.class Lac/k;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lac/h;


# direct methods
.method private constructor <init>(Lac/h;)V
    .registers 2
    .parameter

    .prologue
    .line 2273
    iput-object p1, p0, Lac/k;->a:Lac/h;

    invoke-direct {p0}, Lac/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lac/h;Lac/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2273
    invoke-direct {p0, p1}, Lac/k;-><init>(Lac/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 2277
    const/16 v0, 0xf

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 2
    .parameter

    .prologue
    .line 2288
    return-void
.end method

.method public declared-synchronized a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 2292
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/k;->a:Lac/h;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lac/h;->a(Lac/h;Ljava/lang/Long;)Ljava/lang/Long;

    .line 2293
    iget-object v0, p0, Lac/k;->a:Lac/h;

    invoke-static {v0}, Lac/h;->h(Lac/h;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lac/h;->b(J)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    .line 2294
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2292
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 2282
    const/4 v0, 0x0

    return v0
.end method
