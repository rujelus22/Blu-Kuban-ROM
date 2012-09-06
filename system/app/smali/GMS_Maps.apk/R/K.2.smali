.class public Lr/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aE;


# static fields
.field protected static final b:Ln/al;


# instance fields
.field protected final a:Lt/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Ln/K;

    invoke-direct {v0}, Ln/K;-><init>()V

    sput-object v0, Lr/K;->b:Ln/al;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lt/f;

    invoke-direct {v0, p1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/K;->a:Lt/f;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/al;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v1, p0, Lr/K;->a:Lt/f;

    monitor-enter v1

    .line 28
    :try_start_3
    iget-object v0, p0, Lr/K;->a:Lt/f;

    invoke-virtual {v0, p1, p2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 53
    iget-object v1, p0, Lr/K;->a:Lt/f;

    monitor-enter v1

    .line 54
    :try_start_3
    iget-object v0, p0, Lr/K;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 55
    monitor-exit v1

    .line 56
    const/4 v0, 0x1

    return v0

    .line 55
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Ln/al;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    sget-object v0, Lr/K;->b:Ln/al;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a_(Ln/am;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    sget-object v0, Lr/K;->b:Ln/al;

    invoke-virtual {p0, p1, v0}, Lr/K;->a(Ln/am;Ln/al;)V

    .line 35
    return-void
.end method

.method public b(Ln/am;)Z
    .registers 4
    .parameter

    .prologue
    .line 39
    iget-object v1, p0, Lr/K;->a:Lt/f;

    monitor-enter v1

    .line 40
    :try_start_3
    iget-object v0, p0, Lr/K;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 41
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c(Ln/am;)Ln/al;
    .registers 4
    .parameter

    .prologue
    .line 46
    iget-object v1, p0, Lr/K;->a:Lt/f;

    monitor-enter v1

    .line 47
    :try_start_3
    iget-object v0, p0, Lr/K;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
