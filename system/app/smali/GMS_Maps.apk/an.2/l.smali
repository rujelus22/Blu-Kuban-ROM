.class LaN/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/f;


# instance fields
.field final synthetic a:LaN/b;


# direct methods
.method private constructor <init>(LaN/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, LaN/l;->a:LaN/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaN/b;LaN/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1216
    invoke-direct {p0, p1}, LaN/l;-><init>(LaN/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/e;Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1219
    instance-of v0, p2, Lcom/google/android/maps/driveabout/vector/ac;

    if-eqz v0, :cond_d7

    .line 1220
    iget-object v0, p0, LaN/l;->a:LaN/b;

    invoke-static {v0}, LaN/b;->i(LaN/b;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1221
    :try_start_d
    iget-object v0, p0, LaN/l;->a:LaN/b;

    invoke-static {v0, p2}, LaN/b;->a(LaN/b;Lcom/google/android/maps/driveabout/vector/d;)Lcom/google/android/maps/driveabout/vector/d;

    .line 1222
    check-cast p2, Lcom/google/android/maps/driveabout/vector/ac;

    .line 1223
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->a()Ln/m;

    move-result-object v0

    invoke-virtual {v0}, Ln/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 1224
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v1

    invoke-virtual {v1}, Ln/R;->b()Ln/am;

    move-result-object v1

    invoke-virtual {v1}, Ln/am;->j()Ln/av;

    move-result-object v2

    .line 1226
    sget-object v1, Ln/aq;->c:Ln/aq;

    invoke-virtual {v2, v1}, Ln/av;->b(Ln/aq;)Z

    move-result v4

    .line 1230
    new-instance v1, Lcom/google/googlenav/W;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->n()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_44

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_44

    const-string v0, ""

    :cond_44
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v8

    invoke-virtual {v8}, Ln/R;->c()Ln/Q;

    move-result-object v8

    invoke-static {v8}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v9

    invoke-virtual {v9}, Ln/R;->d()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    const/16 v11, 0x20

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v0, v8, v9}, Lcom/google/googlenav/W;-><init>(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 1236
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->a(Ljava/lang/String;)V

    .line 1241
    :cond_78
    if-eqz v4, :cond_89

    .line 1242
    sget-object v0, Ln/aq;->c:Ln/aq;

    invoke-virtual {v2, v0}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v0

    check-cast v0, Ln/C;

    .line 1243
    invoke-virtual {v0}, Ln/C;->c()Ln/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->a(Ln/B;)V

    .line 1246
    :cond_89
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->u()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1247
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->b(Z)V

    .line 1250
    :cond_97
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->a(B)V

    .line 1255
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->f(I)V

    .line 1257
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ac;->m()Ln/R;

    move-result-object v0

    invoke-virtual {v0}, Ln/R;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/W;->c(Ljava/lang/String;)V

    .line 1258
    const/4 v2, 0x1

    .line 1259
    const/4 v5, 0x0

    .line 1260
    const/4 v4, 0x0

    .line 1261
    iget-object v0, p0, LaN/l;->a:LaN/b;

    invoke-virtual {v0}, LaN/b;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_ce

    move v6, v3

    .line 1266
    :cond_ce
    iget-object v0, p0, LaN/l;->a:LaN/b;

    if-eqz v6, :cond_d3

    const/4 v3, 0x2

    :cond_d3
    invoke-virtual/range {v0 .. v5}, LaN/b;->a(Lcom/google/googlenav/ai;ZBZZ)LaM/ak;

    .line 1278
    monitor-exit v7

    .line 1280
    :cond_d7
    return-void

    .line 1278
    :catchall_d8
    move-exception v0

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_d .. :try_end_da} :catchall_d8

    throw v0
.end method
