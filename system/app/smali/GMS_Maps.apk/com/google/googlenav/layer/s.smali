.class public Lcom/google/googlenav/layer/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/layer/q;


# instance fields
.field private final a:LaY/i;

.field private final b:Lcom/google/googlenav/layer/m;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(LaY/i;Lcom/google/googlenav/layer/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    iput-object p2, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    return-void
.end method

.method private a(Lcom/google/googlenav/T;Z)Lat/g;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/googlenav/T;->r()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_68

    cmp-long v1, v1, v3

    if-lez v1, :cond_68

    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {p1}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/T;->q()Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz v1, :cond_3

    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/p;

    if-nez v0, :cond_57

    new-instance v0, Lcom/google/googlenav/layer/p;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/q;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x43

    if-eqz p2, :cond_6a

    const-string v1, "p"

    :goto_49
    invoke-static {p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/T;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    :cond_57
    invoke-virtual {v0}, Lcom/google/googlenav/layer/p;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/p;->a(Z)V
    :try_end_60
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_60} :catch_61

    goto :goto_3

    :catch_61
    move-exception v0

    const-string v1, "LoadingDetailsHelper.potentiallyFetchDetails"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_68
    const/4 v1, 0x0

    goto :goto_1f

    :cond_6a
    :try_start_6a
    const-string v1, "i"
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_6c} :catch_61

    goto :goto_49
.end method

.method private a()Lcom/google/googlenav/Q;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v2}, LaY/i;->ax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support loading details on-demand."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    const-string v1, "LoadingDetailsHelper.getLayerFeatureSet"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_35
    :try_start_35
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    check-cast v0, LaY/t;

    invoke-virtual {v0}, LaY/t;->i()Lcom/google/googlenav/Q;

    move-result-object v0

    :goto_3d
    return-object v0

    :sswitch_3e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bM()Lcom/google/googlenav/Q;

    move-result-object v0

    goto :goto_3d

    :sswitch_47
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    check-cast v0, LaY/W;

    invoke-virtual {v0}, LaY/W;->b()Lcom/google/googlenav/Q;

    move-result-object v0

    goto :goto_3d

    :sswitch_50
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    check-cast v0, LaY/aS;

    invoke-virtual {v0}, LaY/aS;->i()Lcom/google/googlenav/Q;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_57} :catch_2e

    move-result-object v0

    goto :goto_3d

    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_3e
        0x6 -> :sswitch_35
        0x7 -> :sswitch_35
        0xb -> :sswitch_35
        0xf -> :sswitch_47
        0x10 -> :sswitch_50
    .end sparse-switch
.end method

.method private static a(Lcom/google/googlenav/T;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/T;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ah;)Lat/g;
    .registers 4

    :try_start_0
    check-cast p1, Lcom/google/googlenav/T;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/T;Z)Lat/g;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    const-string v1, "LoadingDetailsHelper.loadDetails"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/T;Z)V
    .registers 10

    const-wide/16 v2, -0x1

    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8e

    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Lcom/google/googlenav/T;->a(B)V

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->j()J

    move-result-wide v0

    :goto_1e
    cmp-long v4, v0, v2

    if-eqz v4, :cond_3a

    invoke-virtual {p2}, Lcom/google/googlenav/T;->r()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_3a

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/T;->a(J)V

    :cond_3a
    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->a()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;Lcom/google/googlenav/T;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0, p2}, LaY/i;->a(Lcom/google/googlenav/ah;)V

    move-object v0, p2

    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    if-eqz v0, :cond_69

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->p()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->e(Lam/b;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->a(B)V

    :cond_69
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    instance-of v0, v0, LaY/m;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    check-cast v0, LaY/m;

    invoke-virtual {v0}, LaY/m;->bs()V

    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->ap()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->ao()Z

    :cond_8b
    return-void

    :cond_8c
    move-wide v0, v2

    goto :goto_1e

    :cond_8e
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/layer/s;->a()Lcom/google/googlenav/Q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/Q;->a(Ljava/lang/String;Lcom/google/googlenav/T;)V
    :try_end_a3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a3} :catch_a4

    goto :goto_47

    :catch_a4
    move-exception v0

    const-string v1, "LoadingDetailsHelper.complete"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_ab
    if-eqz p3, :cond_7e

    :try_start_ad
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/i;->e(Z)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->a:LaY/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/i;->a(B)V
    :try_end_b9
    .catch Ljava/lang/ClassCastException; {:try_start_ad .. :try_end_b9} :catch_a4

    goto :goto_7e
.end method

.method public b(Lcom/google/googlenav/ah;)Lat/g;
    .registers 4

    :try_start_0
    check-cast p1, Lcom/google/googlenav/T;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/T;Z)Lat/g;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    const-string v1, "LoadingDetailsHelper.prefetchDetails"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
