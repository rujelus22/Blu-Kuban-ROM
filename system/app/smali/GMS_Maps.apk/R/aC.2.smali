.class public Lr/aC;
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
    .line 53
    new-instance v0, Ln/K;

    invoke-direct {v0}, Ln/K;-><init>()V

    sput-object v0, Lr/aC;->b:Ln/al;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lt/f;

    invoke-direct {v0, p1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/aC;->a:Lt/f;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/al;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v1, p0, Lr/aC;->a:Lt/f;

    monitor-enter v1

    .line 62
    :try_start_3
    iget-object v0, p0, Lr/aC;->a:Lt/f;

    new-instance v2, Lr/aD;

    invoke-direct {v2, p2}, Lr/aD;-><init>(Ln/al;)V

    invoke-virtual {v0, p1, v2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 95
    iget-object v1, p0, Lr/aC;->a:Lt/f;

    monitor-enter v1

    .line 96
    :try_start_3
    iget-object v0, p0, Lr/aC;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 97
    monitor-exit v1

    .line 98
    const/4 v0, 0x1

    return v0

    .line 97
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
    .line 103
    sget-object v0, Lr/aC;->b:Ln/al;

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
    .line 69
    sget-object v0, Lr/aC;->b:Ln/al;

    invoke-virtual {p0, p1, v0}, Lr/aC;->a(Ln/am;Ln/al;)V

    .line 70
    return-void
.end method

.method public b(Ln/am;)Z
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lr/aC;->c(Ln/am;)Ln/al;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(Ln/am;)Ln/al;
    .registers 5
    .parameter

    .prologue
    .line 79
    iget-object v1, p0, Lr/aC;->a:Lt/f;

    monitor-enter v1

    .line 80
    :try_start_3
    iget-object v0, p0, Lr/aC;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aD;

    .line 81
    if-eqz v0, :cond_1a

    .line 82
    invoke-virtual {v0}, Lr/aD;->a()Ln/al;

    move-result-object v0

    .line 83
    if-nez v0, :cond_18

    .line 85
    iget-object v2, p0, Lr/aC;->a:Lt/f;

    invoke-virtual {v2, p1}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_18
    monitor-exit v1

    .line 89
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_19

    .line 90
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
