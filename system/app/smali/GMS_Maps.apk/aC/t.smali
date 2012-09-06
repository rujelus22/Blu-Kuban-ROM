.class public Lac/t;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[BZZZLjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 56
    iput p1, p0, Lac/t;->a:I

    .line 57
    iput-object p2, p0, Lac/t;->b:[B

    .line 58
    iput-boolean p3, p0, Lac/t;->c:Z

    .line 59
    iput-boolean p4, p0, Lac/t;->d:Z

    .line 60
    iput-boolean p5, p0, Lac/t;->e:Z

    .line 61
    iput-object p6, p0, Lac/t;->h:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lac/t;->a:I

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lac/t;->b:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lac/t;->f:Z

    .line 88
    iget-object v0, p0, Lac/t;->h:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 89
    iget-object v1, p0, Lac/t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_f
    iget-object v0, p0, Lac/t;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v1

    .line 93
    :cond_15
    return-void

    .line 91
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lac/t;->g:Z

    .line 98
    iget-object v0, p0, Lac/t;->h:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 99
    iget-object v1, p0, Lac/t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_a
    iget-object v0, p0, Lac/t;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v1

    .line 104
    :cond_10
    return v2

    .line 101
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lac/t;->c:Z

    return v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lac/t;->e:Z

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lac/t;->d:Z

    return v0
.end method
