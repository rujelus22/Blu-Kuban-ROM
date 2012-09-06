.class public LaM/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/au;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private final b:Lcom/google/android/maps/driveabout/vector/db;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, LaM/ah;->c:Z

    .line 22
    iput-boolean v0, p0, LaM/ah;->d:Z

    .line 25
    iput-object p1, p0, LaM/ah;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 26
    iput-object p2, p0, LaM/ah;->b:Lcom/google/android/maps/driveabout/vector/db;

    .line 27
    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaM/ah;->c:Z

    if-eqz v0, :cond_f

    .line 97
    iget-object v0, p0, LaM/ah;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/ah;->c:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 100
    :cond_f
    monitor-exit p0

    return-void

    .line 96
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaM/ah;->c:Z

    iget-object v1, p0, LaM/ah;->b:Lcom/google/android/maps/driveabout/vector/db;

    new-instance v2, Ln/u;

    invoke-direct {v2}, Ln/u;-><init>()V

    invoke-virtual {v2, p1}, Ln/u;->a(Ljava/lang/String;)Ln/u;

    move-result-object v2

    invoke-virtual {v2}, Ln/u;->a()Ln/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Ln/ao;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, LaM/ah;->c:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, LaM/ah;->d:Z

    .line 64
    return-void
.end method

.method public b(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, LaM/ah;->d:Z

    if-eqz v0, :cond_5

    .line 56
    :cond_4
    :goto_4
    return-void

    .line 49
    :cond_5
    instance-of v0, p1, LaM/bj;

    if-eqz v0, :cond_4

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/ah;->a(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, LaM/ah;->a()V

    goto :goto_4
.end method

.method public c(LaM/i;)V
    .registers 5
    .parameter

    .prologue
    .line 69
    instance-of v0, p1, LaM/bj;

    if-nez v0, :cond_5

    .line 92
    :cond_4
    :goto_4
    return-void

    .line 75
    :cond_5
    iget-object v0, p0, LaM/ah;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->B()Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v1, :cond_4

    .line 80
    check-cast p1, LaM/bj;

    invoke-virtual {p1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 83
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {p0, v1}, LaM/ah;->a(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, LaM/ah;->a()V

    goto :goto_4
.end method
