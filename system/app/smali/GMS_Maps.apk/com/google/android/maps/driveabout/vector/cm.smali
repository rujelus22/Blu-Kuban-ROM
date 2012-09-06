.class Lcom/google/android/maps/driveabout/vector/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/b;


# static fields
.field static final a:Lz/D;


# instance fields
.field final b:Lz/B;

.field final c:Lz/B;

.field final d:Lz/h;

.field final e:Ljava/util/List;

.field final f:Ljava/lang/ref/WeakReference;

.field final g:Landroid/content/res/Resources;

.field h:Lz/c;

.field i:Lcom/google/android/maps/driveabout/vector/k;

.field final j:Lu/l;

.field k:Z

.field final l:Ln/P;

.field m:Lcom/google/android/maps/driveabout/vector/cn;

.field n:I

.field final o:Ljava/util/Map;

.field p:F

.field q:F

.field r:F

.field s:F

.field t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 1005
    new-instance v0, Lz/D;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lz/D;-><init>(FFF)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cm;->a:Lz/D;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->o:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 1106
    if-nez v0, :cond_27

    .line 1107
    const/4 v1, 0x1

    .line 1108
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;Z)V

    .line 1109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 1110
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cm;->g:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    .line 1111
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cm;->o:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 1113
    :cond_27
    monitor-exit p0

    return-object v0

    .line 1105
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1154
    return-void
.end method

.method declared-synchronized a(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1236
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cm;->p:F

    .line 1237
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cm;->q:F

    .line 1238
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cm;->r:F
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1239
    monitor-exit p0

    return-void

    .line 1236
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lz/c;)V
    .registers 3
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cm;->h:Lz/c;

    .line 1148
    sget-object v0, Lz/c;->a:Lz/H;

    invoke-interface {p1, p0, v0}, Lz/c;->a(Lz/b;Lz/G;)V

    .line 1149
    return-void
.end method

.method public declared-synchronized b(Lz/c;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1159
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b7

    .line 1160
    if-nez v0, :cond_11

    .line 1232
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 1165
    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->j:Lu/l;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lu/l;->a(J)I

    move-result v4

    .line 1166
    if-eqz v4, :cond_20

    .line 1170
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->k:Z

    .line 1174
    :cond_20
    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->t:Z

    if-nez v4, :cond_ba

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget v4, v4, Lcom/google/android/maps/driveabout/vector/cn;->c:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget v5, v5, Lcom/google/android/maps/driveabout/vector/cn;->b:I

    if-eq v4, v5, :cond_ba

    .line 1176
    :goto_2e
    if-eqz v2, :cond_bd

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->l:Ln/P;

    invoke-virtual {v2}, Ln/P;->h()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_bd

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/cn;->c:I

    .line 1179
    :goto_3e
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cm;->n:I

    if-eq v3, v2, :cond_47

    .line 1180
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->n:I

    .line 1181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->k:Z

    .line 1185
    :cond_47
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->k:Z

    if-eqz v2, :cond_f

    .line 1186
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->k:Z

    .line 1188
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->d:Lz/h;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cm;->n:I

    invoke-virtual {p0, v0, v3}, Lcom/google/android/maps/driveabout/vector/cm;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Lz/h;->a(Lz/m;I)V

    .line 1190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->j:Lu/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->l:Ln/P;

    invoke-interface {v0, v2}, Lu/l;->a(Ln/P;)Z

    .line 1191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->l:Ln/P;

    invoke-virtual {v0}, Ln/P;->a()Ln/Q;

    move-result-object v2

    .line 1194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->i:Lcom/google/android/maps/driveabout/vector/k;

    if-eqz v0, :cond_f

    if-eqz v2, :cond_f

    .line 1195
    const/4 v0, 0x4

    new-array v3, v0, [F

    .line 1196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->l:Ln/P;

    invoke-virtual {v0}, Ln/P;->c()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v2}, Ln/Q;->e()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 1198
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cm;->i:Lcom/google/android/maps/driveabout/vector/k;

    invoke-static {v4, v5, v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V

    .line 1200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->b:Lz/B;

    invoke-virtual {v0}, Lz/B;->a()Lz/B;

    .line 1201
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->b:Lz/B;

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v0, v4, v5, v6}, Lz/B;->a(FFF)Lz/B;

    .line 1202
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->b:Lz/B;

    const/4 v4, 0x3

    aget v4, v3, v4

    invoke-virtual {v0, v4}, Lz/B;->a(F)Lz/B;

    .line 1203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/h;

    .line 1204
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cm;->b:Lz/B;

    invoke-interface {v0, v5}, Lz/C;->a(Lz/B;)V
    :try_end_b6
    .catchall {:try_start_11 .. :try_end_b6} :catchall_b7

    goto :goto_a5

    .line 1159
    :catchall_b7
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ba
    move v2, v3

    .line 1174
    goto/16 :goto_2e

    .line 1176
    :cond_bd
    :try_start_bd
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/cn;->b:I

    goto/16 :goto_3e

    .line 1210
    :cond_c3
    const/4 v0, 0x1

    .line 1211
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->i:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v4

    .line 1214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    if-eqz v0, :cond_12c

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->q:F

    .line 1215
    :goto_d2
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cm;->i:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v5, v0, v4}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cm;->s:F

    mul-float/2addr v0, v4

    .line 1217
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cm;->i:Lcom/google/android/maps/driveabout/vector/k;

    invoke-static {v4, v5, v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->c:Lz/B;

    invoke-virtual {v0}, Lz/B;->a()Lz/B;

    .line 1219
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->c:Lz/B;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x2

    aget v5, v3, v5

    invoke-virtual {v0, v2, v4, v5}, Lz/B;->a(FFF)Lz/B;

    .line 1220
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->c:Lz/B;

    const/4 v0, 0x3

    aget v3, v3, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    if-eqz v0, :cond_12f

    move v0, v1

    :goto_100
    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lz/B;->a(F)Lz/B;

    .line 1221
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->m:Lcom/google/android/maps/driveabout/vector/cn;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/cn;->a:Z

    if-eqz v0, :cond_118

    .line 1222
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->c:Lz/B;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cm;->a:Lz/D;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cm;->l:Ln/P;

    invoke-virtual {v2}, Ln/P;->b()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lz/B;->a(Lz/D;F)Lz/B;

    .line 1224
    :cond_118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->d:Lz/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cm;->c:Lz/B;

    invoke-virtual {v0, v1}, Lz/h;->a(Lz/B;)V

    .line 1227
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->h:Lz/c;

    if-eqz v0, :cond_f

    .line 1228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->h:Lz/c;

    sget-object v1, Lz/j;->a:Lz/H;

    invoke-interface {v0, p0, v1}, Lz/c;->a(Lz/b;Lz/G;)V

    goto/16 :goto_f

    .line 1214
    :cond_12c
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->p:F

    goto :goto_d2

    .line 1220
    :cond_12f
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cm;->r:F
    :try_end_131
    .catchall {:try_start_bd .. :try_end_131} :catchall_b7

    goto :goto_100
.end method
