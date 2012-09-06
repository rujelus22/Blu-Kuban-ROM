.class Lcom/google/googlenav/prefetch/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/google/googlenav/prefetch/android/k;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILcom/google/googlenav/prefetch/android/k;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1176
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    iput p2, p0, Lcom/google/googlenav/prefetch/android/l;->c:I

    .line 1178
    iput p2, p0, Lcom/google/googlenav/prefetch/android/l;->b:I

    .line 1179
    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    .line 1180
    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->d:I

    .line 1181
    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->e:I

    .line 1182
    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->f:I

    .line 1183
    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->g:I

    .line 1184
    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->h:I

    .line 1185
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ln/am;ILn/al;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    const/4 v3, 0x3

    .line 1189
    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/k;->a(Lcom/google/googlenav/prefetch/android/k;)LaD/g;

    move-result-object v2

    invoke-virtual {v2}, LaD/g;->d()Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_146

    move-result v2

    if-eqz v2, :cond_13

    .line 1276
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 1193
    :cond_13
    if-eq p2, v3, :cond_11

    .line 1207
    packed-switch p2, :pswitch_data_174

    .line 1222
    :goto_18
    :try_start_18
    iget v2, p0, Lcom/google/googlenav/prefetch/android/l;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/googlenav/prefetch/android/l;->b:I

    .line 1224
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/k;->b(Lcom/google/googlenav/prefetch/android/k;)LaD/h;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1225
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/k;->b(Lcom/google/googlenav/prefetch/android/k;)LaD/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-virtual {v3}, Lcom/google/googlenav/prefetch/android/k;->e()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v4}, Lcom/google/googlenav/prefetch/android/k;->c(Lcom/google/googlenav/prefetch/android/k;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/prefetch/android/y;->i()I

    move-result v4

    iget v5, p0, Lcom/google/googlenav/prefetch/android/l;->b:I

    add-int/2addr v4, v5

    invoke-interface {v2, v3, v4}, LaD/h;->a(II)V

    .line 1228
    if-eqz p2, :cond_65

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/k;->a(Lcom/google/googlenav/prefetch/android/k;)LaD/g;

    move-result-object v2

    invoke-virtual {v2}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    if-ne v2, v3, :cond_65

    if-eq p2, v0, :cond_65

    .line 1232
    if-ne p2, v6, :cond_171

    .line 1235
    :goto_5c
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v1}, Lcom/google/googlenav/prefetch/android/k;->b(Lcom/google/googlenav/prefetch/android/k;)LaD/h;

    move-result-object v1

    invoke-interface {v1, v0}, LaD/h;->a(I)V

    .line 1243
    :cond_65
    if-nez p3, :cond_161

    .line 1246
    iget v0, p0, Lcom/google/googlenav/prefetch/android/l;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->g:I

    .line 1255
    :goto_6d
    if-nez p2, :cond_76

    .line 1256
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->c()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/p;->a(Ln/am;)V

    .line 1260
    :cond_76
    iget v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:I

    if-nez v0, :cond_11

    .line 1261
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/prefetch/android/l;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-virtual {v2}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v2

    invoke-virtual {v2}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/k;->d()LaD/g;

    move-result-object v0

    invoke-virtual {v0}, LaD/g;->g()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    invoke-static {}, Lcom/google/googlenav/clientparam/e;->k()Lcom/google/googlenav/clientparam/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/e;->h()J

    move-result-wide v0

    .line 1274
    :goto_13c
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;ILjava/lang/Object;J)V
    :try_end_144
    .catchall {:try_start_18 .. :try_end_144} :catchall_146

    goto/16 :goto_11

    .line 1189
    :catchall_146
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1209
    :pswitch_149
    :try_start_149
    iget v2, p0, Lcom/google/googlenav/prefetch/android/l;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlenav/prefetch/android/l;->d:I

    goto/16 :goto_18

    .line 1212
    :pswitch_151
    iget v2, p0, Lcom/google/googlenav/prefetch/android/l;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlenav/prefetch/android/l;->e:I

    goto/16 :goto_18

    .line 1215
    :pswitch_159
    iget v2, p0, Lcom/google/googlenav/prefetch/android/l;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlenav/prefetch/android/l;->f:I

    goto/16 :goto_18

    .line 1248
    :cond_161
    iget v0, p0, Lcom/google/googlenav/prefetch/android/l;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/l;->h:I

    .line 1251
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->i:Lcom/google/googlenav/prefetch/android/k;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/k;->c()V
    :try_end_16c
    .catchall {:try_start_149 .. :try_end_16c} :catchall_146

    goto/16 :goto_6d

    .line 1271
    :cond_16e
    const-wide/16 v0, 0x3e8

    goto :goto_13c

    :cond_171
    move v0, v1

    goto/16 :goto_5c

    .line 1207
    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_149
        :pswitch_151
        :pswitch_159
    .end packed-switch
.end method
