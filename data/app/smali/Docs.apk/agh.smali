.class public Lagh;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lagi;


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

    iput-object v0, p0, Lagh;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lagh;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lagh;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lagh;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lagh;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lagh;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lagh;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 243
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lagh;->a:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 218
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lagh;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 231
    iget-object v0, p0, Lagh;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 232
    return-void
.end method

.method public b(I)V
    .registers 5
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lagh;->b:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 226
    return-void
.end method

.method public b(J)V
    .registers 4
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lagh;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 237
    iget-object v0, p0, Lagh;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 238
    return-void
.end method
