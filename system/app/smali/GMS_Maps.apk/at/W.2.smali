.class Lat/W;
.super Lat/d;
.source "SourceFile"


# instance fields
.field final synthetic b:Lat/V;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lat/V;)V
    .registers 4
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lat/W;->b:Lat/V;

    .line 281
    const/16 v0, 0x1a

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lat/d;-><init>(IB)V

    .line 278
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/W;->c:Ljava/util/Vector;

    .line 282
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 2
    .parameter

    .prologue
    .line 328
    return-void
.end method

.method protected a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 324
    return-void
.end method

.method public a(Lat/X;)V
    .registers 3
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lat/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lat/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lat/P;

    .line 287
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lat/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 288
    iget-object v0, p0, Lat/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/X;

    invoke-virtual {v0}, Lat/X;->a()Lat/P;

    move-result-object v0

    aput-object v0, v2, v1

    .line 287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 291
    :cond_24
    invoke-virtual {p0, v2, p1}, Lat/W;->a([Lat/P;Ljava/io/DataOutput;)V

    .line 292
    return-void
.end method

.method protected a(ILat/P;[B)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lat/W;->b:Lat/V;

    invoke-static {v0}, Lat/V;->a(Lat/V;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/X;

    .line 298
    if-nez v0, :cond_44

    .line 300
    new-instance v0, Lat/X;

    invoke-direct {v0, p2}, Lat/X;-><init>(Lat/P;)V

    .line 307
    :cond_13
    :goto_13
    array-length v1, p3

    if-nez v1, :cond_50

    .line 308
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    invoke-static {}, Lat/V;->e()[Lat/U;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lat/X;->a(J[Lat/U;)V

    .line 312
    :goto_29
    monitor-enter p0

    .line 313
    :try_start_2a
    iget-object v1, p0, Lat/W;->b:Lat/V;

    invoke-static {v1}, Lat/V;->b(Lat/V;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lat/W;->b:Lat/V;

    invoke-static {v0}, Lat/V;->a(Lat/V;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_54

    .line 316
    iget-object v0, p0, Lat/W;->b:Lat/V;

    invoke-static {v0}, Lat/V;->c(Lat/V;)V

    .line 318
    const/4 v0, 0x0

    return v0

    .line 302
    :cond_44
    invoke-virtual {v0}, Lat/X;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 304
    new-instance v0, Lat/X;

    invoke-direct {v0, p2}, Lat/X;-><init>(Lat/P;)V

    goto :goto_13

    .line 310
    :cond_50
    invoke-virtual {v0, p3}, Lat/X;->a([B)V

    goto :goto_29

    .line 315
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
