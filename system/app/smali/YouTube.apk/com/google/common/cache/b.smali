.class public final Lcom/google/common/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/c;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/cache/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 243
    return-void
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/common/cache/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 218
    return-void
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/common/cache/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 231
    iget-object v0, p0, Lcom/google/common/cache/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 232
    return-void
.end method

.method public final a(Lcom/google/common/cache/c;)V
    .registers 6
    .parameter

    .prologue
    .line 260
    invoke-interface {p1}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/h;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/google/common/cache/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 262
    iget-object v1, p0, Lcom/google/common/cache/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 263
    iget-object v1, p0, Lcom/google/common/cache/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 264
    iget-object v1, p0, Lcom/google/common/cache/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 265
    iget-object v1, p0, Lcom/google/common/cache/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 266
    iget-object v1, p0, Lcom/google/common/cache/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 267
    return-void
.end method

.method public final b()Lcom/google/common/cache/h;
    .registers 14

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/cache/h;

    iget-object v1, p0, Lcom/google/common/cache/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/common/cache/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/common/cache/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/common/cache/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/common/cache/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    iget-object v11, p0, Lcom/google/common/cache/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/h;-><init>(JJJJJJ)V

    return-object v0
.end method

.method public final b(I)V
    .registers 5
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/cache/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 226
    return-void
.end method

.method public final b(J)V
    .registers 4
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/common/cache/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 237
    iget-object v0, p0, Lcom/google/common/cache/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 238
    return-void
.end method
