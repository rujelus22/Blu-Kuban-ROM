.class public abstract Lr/f;
.super Lt/c;
.source "SourceFile"

# interfaces
.implements Lac/q;
.implements Lr/W;
.implements Lr/aH;


# instance fields
.field private volatile A:Z

.field private B:Lr/aF;

.field private a:Lr/aE;

.field protected b:Lr/j;

.field volatile c:I

.field protected d:Lcom/google/googlenav/common/a;

.field volatile e:I

.field volatile f:I

.field private h:Lr/s;

.field private volatile i:Z

.field private final j:Z

.field private k:I

.field private l:Ljava/util/Locale;

.field private volatile m:Lr/k;

.field private final n:Ljava/util/concurrent/locks/ReentrantLock;

.field private final o:Lac/p;

.field private p:Landroid/os/Handler;

.field private q:Landroid/os/Looper;

.field private r:Z

.field private final s:Ljava/util/List;

.field private final t:Lt/f;

.field private final u:Ljava/util/Map;

.field private final v:I

.field private w:Z

.field private final x:Ljava/io/File;

.field private y:Lcom/google/googlenav/bB;

.field private final z:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lac/p;Ljava/lang/String;Lr/aE;Lr/s;IZILjava/util/Locale;Ljava/io/File;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p2}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lr/f;->n:Ljava/util/concurrent/locks/ReentrantLock;

    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/f;->s:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr/f;->u:Ljava/util/Map;

    .line 150
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    .line 166
    iput-boolean v1, p0, Lr/f;->w:Z

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    .line 183
    iput-boolean v1, p0, Lr/f;->A:Z

    .line 186
    new-instance v0, Lr/g;

    invoke-direct {v0, p0}, Lr/g;-><init>(Lr/f;)V

    iput-object v0, p0, Lr/f;->B:Lr/aF;

    .line 226
    iput-object p3, p0, Lr/f;->a:Lr/aE;

    .line 227
    iput-object p4, p0, Lr/f;->h:Lr/s;

    .line 228
    iput-boolean v1, p0, Lr/f;->i:Z

    .line 229
    iput p5, p0, Lr/f;->v:I

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lr/f;->k:I

    .line 231
    iput-boolean p6, p0, Lr/f;->j:Z

    .line 232
    iput-object p8, p0, Lr/f;->l:Ljava/util/Locale;

    .line 233
    iput-object p9, p0, Lr/f;->x:Ljava/io/File;

    .line 234
    iput-object p1, p0, Lr/f;->o:Lac/p;

    .line 235
    invoke-virtual {p0}, Lr/f;->m()Lr/j;

    move-result-object v0

    iput-object v0, p0, Lr/f;->b:Lr/j;

    .line 236
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-static {v0, p0}, Lr/j;->a(Lr/j;Lr/f;)Lr/f;

    .line 237
    new-instance v0, Lr/h;

    invoke-direct {v0, p0, p7}, Lr/h;-><init>(Lr/f;I)V

    iput-object v0, p0, Lr/f;->t:Lt/f;

    .line 245
    return-void
.end method

.method private a(Lr/m;Z)Landroid/util/Pair;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1221
    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v1

    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v2

    invoke-virtual {v2}, Ln/am;->j()Ln/av;

    move-result-object v2

    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/av;->a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/av;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v2

    .line 1226
    iget-object v1, p0, Lr/f;->a:Lr/aE;

    if-eqz v1, :cond_68

    .line 1227
    iget-object v1, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v1, v2}, Lr/aE;->c(Ln/am;)Ln/al;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_68

    iget-object v3, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v3}, Ln/al;->a(Lcom/google/googlenav/common/a;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 1229
    iget-object v2, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v2, v1}, Lr/aE;->a(Ln/al;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1230
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 1240
    :goto_3b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1295
    :goto_43
    return-object v0

    .line 1232
    :cond_44
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    if-eqz v2, :cond_53

    .line 1233
    iget-object v2, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    invoke-virtual {v2}, Lcom/google/googlenav/bB;->a()V

    .line 1235
    :cond_53
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lr/f;->a(Ln/al;Z)Lr/m;

    move-result-object v2

    .line 1236
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1237
    :goto_61
    invoke-virtual {p0, p1, v5, v0}, Lr/f;->a(Lr/m;ILn/al;)V

    move-object v0, v2

    goto :goto_3b

    :cond_66
    move-object v0, v1

    .line 1236
    goto :goto_61

    .line 1243
    :cond_68
    if-eqz p2, :cond_db

    .line 1245
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v1

    .line 1246
    if-eqz v1, :cond_db

    .line 1247
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1248
    invoke-interface {v1, v2}, Lr/s;->b(Ln/am;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 1249
    invoke-virtual {p0, p1, v5, v0}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 1251
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_43

    .line 1254
    :cond_88
    invoke-interface {v1, v2}, Lr/s;->c(Ln/am;)Ln/al;

    move-result-object v3

    .line 1255
    if-eqz v3, :cond_db

    iget-object v4, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3, v4}, Ln/al;->a(Lcom/google/googlenav/common/a;)Z

    move-result v4

    if-nez v4, :cond_db

    .line 1256
    invoke-interface {v1, v3}, Lr/s;->a(Ln/al;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 1260
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    if-eqz v1, :cond_ab

    .line 1261
    iget-object v1, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    invoke-virtual {v1}, Lcom/google/googlenav/bB;->c()V

    .line 1263
    :cond_ab
    invoke-direct {p0, p1, v2}, Lr/f;->a(Lr/m;Ln/am;)V

    .line 1278
    :goto_ae
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_43

    .line 1268
    :cond_b7
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    if-eqz v0, :cond_c6

    .line 1269
    iget-object v0, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    invoke-virtual {v0}, Lcom/google/googlenav/bB;->b()V

    .line 1271
    :cond_c6
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_cf

    .line 1272
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0, v2, v3}, Lr/aE;->a(Ln/am;Ln/al;)V

    .line 1274
    :cond_cf
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lr/f;->a(Ln/al;Z)Lr/m;

    move-result-object v0

    .line 1275
    invoke-virtual {p0, p1, v5, v3}, Lr/f;->a(Lr/m;ILn/al;)V

    goto :goto_ae

    .line 1283
    :cond_db
    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v1

    if-nez v1, :cond_ea

    iget-object v1, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    if-eqz v1, :cond_ea

    .line 1284
    iget-object v1, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    invoke-virtual {v1}, Lcom/google/googlenav/bB;->c()V

    .line 1294
    :cond_ea
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lr/m;->a(I)V

    .line 1295
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_43
.end method

.method private a(Ln/al;Z)Lr/m;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 1306
    invoke-virtual {p0}, Lr/f;->d()I

    move-result v1

    .line 1309
    const/4 v0, 0x0

    .line 1311
    if-eq v1, v6, :cond_37

    invoke-interface {p1}, Ln/al;->e()I

    move-result v2

    if-eq v1, v2, :cond_37

    move v1, v4

    .line 1327
    :goto_11
    if-eqz v1, :cond_36

    .line 1334
    new-instance v0, Lr/m;

    invoke-interface {p1}, Ln/al;->d()Ln/am;

    move-result-object v1

    iget-object v2, p0, Lr/f;->B:Lr/aF;

    sget-object v3, Lr/e;->b:Lr/e;

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lr/m;-><init>(Ln/am;Lr/aF;Lr/e;ZZIZ)V

    .line 1338
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->v()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1339
    invoke-interface {p1}, Ln/al;->d()Ln/am;

    move-result-object v1

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    invoke-direct {p0, v6, v1}, Lr/f;->a(II)V

    .line 1342
    :cond_36
    return-object v0

    .line 1315
    :cond_37
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->v()Z

    move-result v1

    if-eqz v1, :cond_51

    if-nez p2, :cond_51

    .line 1319
    iget-object v1, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    invoke-interface {p1, v1}, Ln/al;->b(Lcom/google/googlenav/common/a;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1322
    invoke-interface {p1}, Ln/al;->h()I

    move-result v6

    move v1, v4

    .line 1323
    goto :goto_11

    :cond_51
    move v1, v5

    goto :goto_11
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lr/s;->a(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 390
    iput-object v2, p0, Lr/f;->h:Lr/s;

    .line 392
    :cond_f
    iput p1, p0, Lr/f;->k:I

    .line 394
    iget-boolean v1, p0, Lr/f;->j:Z

    if-eqz v1, :cond_2b

    .line 395
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lr/s;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 396
    iput-object v2, p0, Lr/f;->h:Lr/s;

    .line 398
    :cond_1f
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_28

    .line 399
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0}, Lr/aE;->a()Z

    .line 401
    :cond_28
    invoke-direct {p0}, Lr/f;->n()V

    .line 403
    :cond_2b
    return-void
.end method

.method private a(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1824
    iget-object v0, p0, Lr/f;->o:Lac/p;

    invoke-interface {v0}, Lac/p;->w()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x8

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1839
    :goto_1d
    return-void

    .line 1829
    :cond_1e
    const/4 v0, -0x1

    if-eq p1, v0, :cond_75

    move v0, v1

    .line 1830
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ln/aF;->t()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1834
    const/16 v5, 0x6d

    const-string v6, "u"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    invoke-static {v7}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_75
    move v0, v2

    .line 1829
    goto :goto_22
.end method

.method private a(IIIIII)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1786
    iget-object v1, p0, Lr/f;->o:Lac/p;

    invoke-interface {v1}, Lac/p;->w()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1811
    :goto_15
    return-void

    .line 1791
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1803
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ln/aF;->t()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1805
    const/16 v8, 0x6d

    const-string v9, "b"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    invoke-static {v10}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method static synthetic a(Lr/f;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lr/f;->o()V

    return-void
.end method

.method static synthetic a(Lr/f;Ln/am;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lr/f;->b(Ln/am;)V

    return-void
.end method

.method static synthetic a(Lr/f;Ln/an;Lr/e;Lr/aF;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lr/f;->b(Ln/an;Lr/e;Lr/aF;)V

    return-void
.end method

.method static synthetic a(Lr/f;Lr/j;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lr/f;->a(Lr/j;)V

    return-void
.end method

.method static synthetic a(Lr/f;Lr/m;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lr/f;->b(Lr/m;)V

    return-void
.end method

.method private a(Lr/j;)V
    .registers 18
    .parameter

    .prologue
    .line 910
    invoke-direct/range {p0 .. p0}, Lr/f;->s()V

    .line 912
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lr/f;->w:Z

    if-eqz v1, :cond_28

    .line 914
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lr/f;->w:Z

    .line 915
    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/f;->t:Lt/f;

    invoke-virtual {v1}, Lt/f;->f()I

    move-result v1

    if-eqz v1, :cond_28

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/f;->t:Lt/f;

    invoke-virtual {v1}, Lt/f;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/m;

    .line 917
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lr/f;->b(Lr/m;)V

    goto :goto_e

    .line 923
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lr/j;->b()I

    move-result v1

    .line 924
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lr/f;->d()I

    move-result v2

    if-eq v1, v2, :cond_3a

    .line 929
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lr/f;->a(I)V

    .line 931
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/f;->s:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1032
    :cond_46
    :goto_46
    return-void

    .line 937
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lr/f;->l()Lr/s;

    move-result-object v9

    .line 939
    invoke-virtual/range {p1 .. p1}, Lr/j;->c()I

    move-result v2

    .line 940
    const/4 v3, 0x0

    .line 941
    const/4 v4, 0x0

    .line 942
    const/4 v5, 0x0

    .line 943
    const/4 v7, 0x0

    .line 944
    const/4 v6, 0x0

    .line 946
    const/4 v1, 0x0

    :goto_55
    invoke-virtual/range {p1 .. p1}, Lr/j;->c()I

    move-result v8

    if-ge v1, v8, :cond_13f

    .line 947
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lr/j;->a(I)Lr/m;

    move-result-object v10

    .line 948
    invoke-virtual {v10}, Lr/m;->c()Ln/am;

    move-result-object v8

    .line 949
    invoke-virtual {v8}, Ln/am;->j()Ln/av;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v12

    invoke-virtual {v11, v12}, Ln/av;->a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/av;

    move-result-object v11

    invoke-virtual {v8, v11}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v11

    .line 951
    invoke-virtual {v10}, Lr/m;->g()I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_7e

    .line 952
    add-int/lit8 v7, v7, 0x1

    .line 954
    :cond_7e
    move-object/from16 v0, p0

    iget-object v8, v0, Lr/f;->u:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    move-object/from16 v0, p0

    iget v8, v0, Lr/f;->c:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Lr/f;->c:I

    .line 957
    :try_start_8f
    invoke-virtual {v10}, Lr/m;->e()Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 958
    move-object/from16 v0, p0

    iget v8, v0, Lr/f;->f:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lr/f;->f:I

    .line 967
    :goto_9f
    const/4 v8, 0x0

    .line 968
    if-eqz v9, :cond_b3

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lr/j;->c(I)[B

    move-result-object v12

    .line 970
    if-eqz v12, :cond_b3

    .line 971
    array-length v8, v12

    new-array v8, v8, [B

    .line 972
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v12

    invoke-static {v12, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    :cond_b3
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lr/j;->b(I)Ln/al;

    move-result-object v12

    .line 977
    if-eqz v12, :cond_11a

    .line 978
    move-object/from16 v0, p0

    iget-object v13, v0, Lr/f;->a:Lr/aE;

    if-eqz v13, :cond_ce

    invoke-virtual {v10}, Lr/m;->e()Z

    move-result v13

    if-nez v13, :cond_ce

    .line 979
    move-object/from16 v0, p0

    iget-object v13, v0, Lr/f;->a:Lr/aE;

    invoke-interface {v13, v11, v12}, Lr/aE;->a(Ln/am;Ln/al;)V

    .line 981
    :cond_ce
    if-eqz v9, :cond_d3

    .line 982
    invoke-interface {v9, v11, v12, v8}, Lr/s;->a(Ln/am;Ln/al;[B)V

    .line 984
    :cond_d3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v12}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 985
    invoke-virtual {v10}, Lr/m;->e()Z

    move-result v8

    if-eqz v8, :cond_117

    .line 986
    add-int/lit8 v4, v4, 0x1

    .line 946
    :goto_e1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    .line 960
    :cond_e5
    move-object/from16 v0, p0

    iget v8, v0, Lr/f;->e:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lr/f;->e:I
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_ef} :catch_f0

    goto :goto_9f

    .line 1018
    :catch_f0
    move-exception v8

    .line 1019
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lr/f;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": Could not parse tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1020
    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v11}, Lr/f;->a(Lr/m;ILn/al;)V

    goto :goto_e1

    .line 988
    :cond_117
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 994
    :cond_11a
    :try_start_11a
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/K;->v()Z

    move-result v8

    if-eqz v8, :cond_137

    .line 995
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lr/f;->b(Lr/m;Ln/am;)Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 996
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 1010
    :cond_12f
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lr/f;->a(Lr/m;Ln/am;)V

    .line 1011
    add-int/lit8 v6, v6, 0x1

    goto :goto_e1

    .line 1014
    :cond_137
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lr/f;->a(Lr/m;Ln/am;)V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_13c} :catch_f0

    .line 1015
    add-int/lit8 v6, v6, 0x1

    goto :goto_e1

    .line 1026
    :cond_13f
    invoke-direct/range {p0 .. p0}, Lr/f;->t()V

    .line 1028
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->v()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct/range {p0 .. p0}, Lr/f;->u()Z

    move-result v1

    if-eqz v1, :cond_46

    move-object/from16 v1, p0

    .line 1029
    invoke-direct/range {v1 .. v7}, Lr/f;->a(IIIIII)V

    goto/16 :goto_46
.end method

.method private a(Lr/m;)V
    .registers 4
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lr/f;->m:Lr/k;

    if-eqz v0, :cond_9

    .line 322
    iget-object v0, p0, Lr/f;->m:Lr/k;

    invoke-virtual {v0}, Lr/k;->b()V

    .line 324
    :cond_9
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method private a(Lr/m;Ln/am;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_9

    .line 1041
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0, p2}, Lr/aE;->a_(Ln/am;)V

    .line 1043
    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 1044
    return-void
.end method

.method static synthetic a(Lr/f;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lr/f;->A:Z

    return p1
.end method

.method private b(Ln/am;)V
    .registers 6
    .parameter

    .prologue
    .line 506
    iget-object v2, p0, Lr/f;->z:Ljava/util/ArrayList;

    monitor-enter v2

    .line 507
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 508
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aI;

    .line 509
    if-eqz v0, :cond_23

    .line 510
    invoke-interface {v0, p0, p1}, Lr/aI;->a(Lr/aH;Ln/am;)V

    move v0, v1

    .line 507
    :goto_20
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    .line 512
    :cond_23
    iget-object v3, p0, Lr/f;->z:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 515
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 516
    return-void
.end method

.method private b(Ln/an;Lr/e;Lr/aF;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 722
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lr/Z;->a(Lr/e;Z)I

    move-result v0

    .line 723
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v1

    .line 725
    :goto_a
    invoke-interface {p1}, Ln/an;->a()Ln/am;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 726
    if-eqz v1, :cond_16

    .line 727
    invoke-interface {v1, v2, p3, v0}, Lr/s;->a(Ln/am;Lr/aF;I)V

    goto :goto_a

    .line 731
    :cond_16
    const/4 v3, 0x0

    invoke-interface {p3, v2, v4, v3}, Lr/aF;->a(Ln/am;ILn/al;)V

    goto :goto_a

    .line 736
    :cond_1b
    iput-boolean v4, p0, Lr/f;->A:Z

    .line 737
    invoke-direct {p0}, Lr/f;->t()V

    .line 738
    return-void
.end method

.method static synthetic b(Lr/f;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lr/f;->q()V

    return-void
.end method

.method private b(Lr/m;)V
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 760
    invoke-direct {p0}, Lr/f;->s()V

    .line 761
    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v0

    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v2

    invoke-virtual {v2}, Ln/am;->j()Ln/av;

    move-result-object v2

    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/av;->a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/av;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v3

    .line 764
    sget-object v0, Lr/aH;->g:Ln/am;

    invoke-virtual {v0, v3}, Ln/am;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 768
    invoke-virtual {p0, p1, v6, v7}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 865
    :cond_2a
    :goto_2a
    return-void

    .line 772
    :cond_2b
    iget-object v0, p0, Lr/f;->u:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/m;

    .line 782
    invoke-virtual {p1}, Lr/m;->h()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 784
    invoke-virtual {p1}, Lr/m;->f()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 787
    :cond_3f
    invoke-direct {p0, p1, v5}, Lr/f;->a(Lr/m;Z)Landroid/util/Pair;

    move-result-object v4

    .line 789
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 791
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lr/m;

    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 817
    :goto_52
    if-nez v1, :cond_57

    .line 819
    invoke-virtual {p0, p1, v6, v7}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 822
    :cond_57
    if-eqz v2, :cond_2a

    .line 828
    invoke-static {v2}, Lr/f;->c(Lr/m;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 831
    if-eqz v0, :cond_9c

    .line 832
    invoke-virtual {v2}, Lr/m;->j()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 835
    invoke-virtual {v0, v2}, Lr/m;->a(Lr/m;)V

    goto :goto_2a

    .line 793
    :cond_6b
    invoke-virtual {p1}, Lr/m;->f()Z

    move-result v2

    if-eqz v2, :cond_73

    move-object v2, p1

    .line 796
    goto :goto_52

    .line 797
    :cond_73
    if-eqz v0, :cond_83

    invoke-virtual {v0}, Lr/m;->k()Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {v0}, Lr/m;->j()Z

    move-result v2

    if-nez v2, :cond_83

    :cond_81
    move-object v2, p1

    .line 802
    goto :goto_52

    .line 804
    :cond_83
    invoke-direct {p0, p1, v5}, Lr/f;->a(Lr/m;Z)Landroid/util/Pair;

    move-result-object v4

    .line 807
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 808
    if-eqz v2, :cond_99

    .line 809
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lr/m;

    move v8, v2

    move-object v2, v1

    move v1, v8

    goto :goto_52

    :cond_99
    move v1, v2

    move-object v2, p1

    .line 812
    goto :goto_52

    .line 837
    :cond_9c
    iget-boolean v0, p0, Lr/f;->w:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lr/f;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    invoke-virtual {v2}, Lr/m;->e()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 844
    iget-object v0, p0, Lr/f;->t:Lt/f;

    invoke-virtual {v0, v3}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/m;

    .line 845
    if-eqz v0, :cond_bd

    .line 846
    invoke-virtual {v0, v2}, Lr/m;->a(Lr/m;)V

    goto/16 :goto_2a

    .line 848
    :cond_bd
    iget-object v0, p0, Lr/f;->t:Lt/f;

    invoke-virtual {v0, v3, v2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 851
    :cond_c4
    iget-object v0, p0, Lr/f;->u:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-virtual {v0, v2}, Lr/j;->a(Lr/m;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 853
    invoke-direct {p0}, Lr/f;->p()V

    .line 855
    :cond_d4
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v1

    invoke-static {v1, v3}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lr/j;->a(Landroid/util/Pair;Lr/m;)V

    .line 856
    iget v0, p0, Lr/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/f;->c:I

    .line 857
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-virtual {v0}, Lr/j;->d()Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {v2}, Lr/m;->f()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 858
    :cond_f5
    invoke-direct {p0}, Lr/f;->p()V

    goto/16 :goto_2a

    .line 859
    :cond_fa
    iget-boolean v0, p0, Lr/f;->r:Z

    if-nez v0, :cond_2a

    .line 860
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    iput-boolean v5, p0, Lr/f;->r:Z

    goto/16 :goto_2a
.end method

.method private b(Lr/m;Ln/am;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-direct {p0, p2}, Lr/f;->c(Ln/am;)Ln/al;

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ln/al;->h()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 1053
    iget-object v2, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v2}, Ln/al;->c(Lcom/google/googlenav/common/a;)V

    .line 1054
    iget-object v2, p0, Lr/f;->a:Lr/aE;

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lr/m;->e()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1055
    iget-object v2, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v2, p2, v1}, Lr/aE;->a(Ln/am;Ln/al;)V

    .line 1057
    :cond_22
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v2

    .line 1058
    if-eqz v2, :cond_31

    .line 1064
    invoke-interface {v2, p2}, Lr/s;->a(Ln/am;)[B

    move-result-object v3

    .line 1065
    if-eqz v3, :cond_31

    .line 1066
    invoke-interface {v2, p2, v1, v3}, Lr/s;->a(Ln/am;Ln/al;[B)V

    .line 1069
    :cond_31
    invoke-virtual {p0, p1, v0, v1}, Lr/f;->a(Lr/m;ILn/al;)V

    .line 1070
    const/4 v0, 0x1

    .line 1072
    :cond_35
    return v0
.end method

.method private c(Ln/am;)Ln/al;
    .registers 5
    .parameter

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    iget-object v1, p0, Lr/f;->a:Lr/aE;

    if-eqz v1, :cond_14

    .line 1082
    iget-object v1, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v1, p1}, Lr/aE;->b(Ln/am;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1083
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0, p1}, Lr/aE;->c(Ln/am;)Ln/al;

    move-result-object v0

    .line 1093
    :cond_13
    :goto_13
    return-object v0

    .line 1087
    :cond_14
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v1

    .line 1088
    if-eqz v1, :cond_13

    .line 1089
    invoke-interface {v1, p1}, Lr/s;->b(Ln/am;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1090
    invoke-interface {v1, p1}, Lr/s;->c(Ln/am;)Ln/al;

    move-result-object v0

    goto :goto_13
.end method

.method static synthetic c(Lr/f;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lr/f;->r()V

    return-void
.end method

.method private static c(Lr/m;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 869
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 871
    :goto_8
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lr/m;->e()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_10
    return v1

    :cond_11
    move v0, v1

    .line 869
    goto :goto_8
.end method

.method static synthetic d(Lr/f;)I
    .registers 2
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lr/f;->v:I

    return v0
.end method

.method static synthetic e(Lr/f;)Z
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lr/f;->A:Z

    return v0
.end method

.method static synthetic f(Lr/f;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lr/f;->t()V

    return-void
.end method

.method private n()V
    .registers 5

    .prologue
    .line 493
    iget-object v2, p0, Lr/f;->z:Ljava/util/ArrayList;

    monitor-enter v2

    .line 494
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 495
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aI;

    .line 496
    if-eqz v0, :cond_23

    .line 497
    invoke-interface {v0, p0}, Lr/aI;->a(Lr/aH;)V

    move v0, v1

    .line 494
    :goto_20
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    .line 499
    :cond_23
    iget-object v3, p0, Lr/f;->z:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 502
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 503
    return-void
.end method

.method private o()V
    .registers 2

    .prologue
    .line 882
    invoke-direct {p0}, Lr/f;->s()V

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/f;->r:Z

    .line 884
    invoke-direct {p0}, Lr/f;->p()V

    .line 885
    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    .line 892
    invoke-direct {p0}, Lr/f;->s()V

    .line 893
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-virtual {v0}, Lr/j;->c()I

    move-result v0

    if-lez v0, :cond_30

    .line 894
    new-instance v0, LA/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lr/f;->b:Lr/j;

    invoke-direct {v0, v1, v2}, LA/g;-><init>(Ljava/lang/String;Lac/g;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 897
    iget-object v0, p0, Lr/f;->o:Lac/p;

    iget-object v1, p0, Lr/f;->b:Lr/j;

    invoke-interface {v0, v1}, Lac/p;->c(Lac/g;)V

    .line 898
    iget-object v0, p0, Lr/f;->s:Ljava/util/List;

    iget-object v1, p0, Lr/f;->b:Lr/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-virtual {p0}, Lr/f;->m()Lr/j;

    move-result-object v0

    iput-object v0, p0, Lr/f;->b:Lr/j;

    .line 900
    iget-object v0, p0, Lr/f;->b:Lr/j;

    invoke-static {v0, p0}, Lr/j;->a(Lr/j;Lr/f;)Lr/f;

    .line 902
    :cond_30
    return-void
.end method

.method private q()V
    .registers 2

    .prologue
    .line 1173
    invoke-direct {p0}, Lr/f;->s()V

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/f;->w:Z

    .line 1176
    return-void
.end method

.method private r()V
    .registers 6

    .prologue
    .line 1182
    invoke-direct {p0}, Lr/f;->s()V

    .line 1186
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lr/f;->s:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1188
    iget-object v1, p0, Lr/f;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1190
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/j;

    .line 1191
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0}, Lr/j;->c()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 1192
    invoke-virtual {v0, v1}, Lr/j;->a(I)Lr/m;

    move-result-object v3

    .line 1193
    iget-object v4, p0, Lr/f;->u:Ljava/util/Map;

    invoke-virtual {v3}, Lr/m;->c()Ln/am;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget v3, p0, Lr/f;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lr/f;->c:I

    .line 1195
    invoke-virtual {v0, v1}, Lr/j;->a(I)Lr/m;

    move-result-object v3

    invoke-direct {p0, v3}, Lr/f;->b(Lr/m;)V

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1198
    :cond_43
    return-void
.end method

.method private final s()V
    .registers 3

    .prologue
    .line 1350
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 1351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on DashServerTileStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_14
    return-void
.end method

.method private t()V
    .registers 3

    .prologue
    .line 1377
    :try_start_0
    iget-object v0, p0, Lr/f;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1382
    iget-object v0, p0, Lr/f;->h:Lr/s;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lr/f;->h:Lr/s;

    invoke-interface {v0}, Lr/s;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lr/f;->m:Lr/k;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lr/f;->m:Lr/k;

    invoke-virtual {v0}, Lr/k;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1384
    :cond_1d
    new-instance v0, Lr/k;

    invoke-direct {v0, p0}, Lr/k;-><init>(Lr/f;)V

    iput-object v0, p0, Lr/f;->m:Lr/k;
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    .line 1387
    :cond_24
    iget-object v0, p0, Lr/f;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1389
    return-void

    .line 1387
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lr/f;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private u()Z
    .registers 3

    .prologue
    .line 1766
    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lr/f;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public a(Ln/am;Z)Ln/al;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 304
    new-instance v1, Lr/l;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lr/l;-><init>(Lr/g;)V

    .line 305
    new-instance v0, Lr/m;

    invoke-direct {v0, p1, v1}, Lr/m;-><init>(Ln/am;Lr/aF;)V

    .line 306
    invoke-direct {p0, v0, p2}, Lr/f;->a(Lr/m;Z)Landroid/util/Pair;

    move-result-object v0

    .line 309
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lr/m;

    .line 310
    if-eqz v0, :cond_21

    .line 312
    iget-object v2, p0, Lr/f;->p:Landroid/os/Handler;

    iget-object v3, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    :cond_21
    invoke-static {v1}, Lr/l;->a(Lr/l;)Ln/al;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/am;Lr/aF;Lr/e;Z)Lr/aa;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 563
    .line 565
    new-instance v0, Lr/m;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lr/m;-><init>(Ln/am;Lr/aF;Lr/e;ZZIZ)V

    .line 567
    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 568
    iget-object v2, p0, Lr/f;->p:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 617
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    invoke-virtual {p0}, Lr/f;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void

    .line 609
    :cond_4a
    const-string v0, ""

    goto :goto_32
.end method

.method public a(Lac/g;)V
    .registers 5
    .parameter

    .prologue
    .line 595
    instance-of v0, p1, Lr/j;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lr/j;

    invoke-static {v0}, Lr/j;->a(Lr/j;)Lr/f;

    move-result-object v0

    if-ne v0, p0, :cond_19

    .line 600
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 602
    :cond_19
    return-void
.end method

.method public a(Lcom/google/googlenav/bB;)V
    .registers 2
    .parameter

    .prologue
    .line 1758
    iput-object p1, p0, Lr/f;->y:Lcom/google/googlenav/bB;

    .line 1759
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .registers 6
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lr/f;->l:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 471
    :goto_8
    return-void

    .line 452
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 453
    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_f} :catch_40

    .line 454
    :try_start_f
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    iget-object v2, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 457
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_3d

    .line 462
    :goto_1f
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_2e

    invoke-interface {v0, p1}, Lr/s;->a(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lr/f;->h:Lr/s;

    .line 466
    :cond_2e
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_37

    .line 467
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0}, Lr/aE;->a()Z

    .line 469
    :cond_37
    iput-object p1, p0, Lr/f;->l:Ljava/util/Locale;

    .line 470
    invoke-direct {p0}, Lr/f;->n()V

    goto :goto_8

    .line 457
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_40} :catch_40

    .line 458
    :catch_40
    move-exception v0

    .line 459
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1f
.end method

.method public a(Ln/am;Lr/aF;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 276
    new-instance v0, Lr/m;

    invoke-direct {v0, p1, p2}, Lr/m;-><init>(Ln/am;Lr/aF;)V

    .line 277
    invoke-direct {p0, v0}, Lr/f;->a(Lr/m;)V

    .line 278
    return-void
.end method

.method public a(Ln/an;Lr/e;Lr/aF;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lr/f;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    return-void
.end method

.method public a(Lr/aI;)V
    .registers 5
    .parameter

    .prologue
    .line 475
    iget-object v1, p0, Lr/f;->z:Ljava/util/ArrayList;

    monitor-enter v1

    .line 476
    :try_start_3
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method a(Lr/m;ILn/al;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1398
    const/4 v0, 0x0

    move-object v2, p1

    .line 1399
    :goto_3
    if-eqz v2, :cond_41

    .line 1403
    if-nez p2, :cond_3d

    invoke-virtual {v2}, Lr/m;->b()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Lr/m;->d()Lr/e;

    move-result-object v3

    invoke-static {v3}, Lr/Z;->a(Lr/e;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1408
    invoke-interface {p3}, Ln/al;->i()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1411
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v3

    iget-object v4, v2, Lr/m;->b:Lr/aF;

    invoke-virtual {v2}, Lr/m;->d()Lr/e;

    move-result-object v5

    invoke-static {v5, v1}, Lr/Z;->a(Lr/e;Z)I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lr/s;->a(Ln/am;Lr/aF;I)V

    move v0, v1

    .line 1399
    :goto_33
    invoke-static {v2}, Lr/m;->b(Lr/m;)Lr/m;

    move-result-object v2

    goto :goto_3

    .line 1417
    :cond_38
    const/4 v3, 0x4

    invoke-static {v2, v3, p3}, Lr/m;->a(Lr/m;ILn/al;)V

    goto :goto_33

    .line 1420
    :cond_3d
    invoke-static {v2, p2, p3}, Lr/m;->a(Lr/m;ILn/al;)V

    goto :goto_33

    .line 1423
    :cond_41
    if-eqz v0, :cond_48

    .line 1426
    iput-boolean v1, p0, Lr/f;->A:Z

    .line 1427
    invoke-direct {p0}, Lr/f;->t()V

    .line 1429
    :cond_48
    return-void
.end method

.method public a(Ln/am;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 431
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v1

    invoke-interface {v1, p1}, Lr/s;->c(Ln/am;)Ln/al;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_20

    invoke-interface {v1}, Ln/al;->e()I

    move-result v1

    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v2

    invoke-interface {v2}, Lr/s;->c()I

    move-result v2

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 434
    :cond_20
    return v0
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    return-void
.end method

.method public b(Ln/am;Lr/aF;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    const/4 v1, 0x1

    .line 284
    new-instance v2, Lr/m;

    invoke-direct {v2, p1, p2, v0, v1}, Lr/m;-><init>(Ln/am;Lr/aF;ZZ)V

    .line 286
    invoke-direct {p0, v2}, Lr/f;->a(Lr/m;)V

    .line 287
    return-void
.end method

.method public b(Lr/aI;)V
    .registers 5
    .parameter

    .prologue
    .line 482
    iget-object v1, p0, Lr/f;->z:Ljava/util/ArrayList;

    monitor-enter v1

    .line 483
    :try_start_3
    iget-object v0, p0, Lr/f;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 484
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 486
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 489
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 490
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_9

    .line 346
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0}, Lr/aE;->a()Z

    .line 348
    :cond_9
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lr/s;->a()Z

    move-result v1

    if-nez v1, :cond_24

    .line 350
    invoke-interface {v0}, Lr/s;->g()V

    .line 351
    invoke-virtual {p0}, Lr/f;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to clear disk cache"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lr/f;->h:Lr/s;

    .line 354
    :cond_24
    invoke-direct {p0}, Lr/f;->n()V

    .line 355
    return-void
.end method

.method public c(Ln/am;Lr/aF;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 291
    const/4 v0, 0x1

    .line 292
    new-instance v1, Lr/m;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lr/m;-><init>(Ln/am;Lr/aF;ZZ)V

    .line 294
    invoke-direct {p0, v1}, Lr/f;->a(Lr/m;)V

    .line 295
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_b

    .line 361
    invoke-interface {v0}, Lr/s;->c()I

    move-result v0

    .line 363
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lr/f;->k:I

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public f()J
    .registers 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 413
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    invoke-interface {v0}, Lr/s;->d()J

    move-result-wide v0

    .line 415
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public g()J
    .registers 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 422
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    invoke-interface {v0}, Lr/s;->e()J

    move-result-wide v0

    .line 424
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public h()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lr/f;->o:Lac/p;

    invoke-interface {v0, p0}, Lac/p;->a(Lac/q;)V

    .line 521
    invoke-virtual {p0}, Lr/f;->start()V

    .line 524
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_9} :catch_14

    .line 525
    :goto_9
    :try_start_9
    iget-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_9

    .line 528
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    :try_start_13
    throw v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_14

    .line 529
    :catch_14
    move-exception v0

    .line 530
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 532
    :goto_1c
    return-void

    .line 528
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_11

    goto :goto_1c
.end method

.method public i()V
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lr/f;->q:Landroid/os/Looper;

    if-eqz v0, :cond_c

    .line 537
    iget-object v0, p0, Lr/f;->q:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lr/f;->q:Landroid/os/Looper;

    .line 541
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lr/f;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_27

    .line 545
    :goto_f
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0}, Lr/aE;->a()Z

    .line 546
    :cond_18
    invoke-virtual {p0}, Lr/f;->l()Lr/s;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lr/s;->g()V

    .line 548
    :cond_21
    iget-object v0, p0, Lr/f;->o:Lac/p;

    invoke-interface {v0, p0}, Lac/p;->b(Lac/q;)V

    .line 549
    return-void

    .line 542
    :catch_27
    move-exception v0

    .line 543
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f
.end method

.method public j()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lr/f;->a:Lr/aE;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lr/f;->a:Lr/aE;

    invoke-interface {v0}, Lr/aE;->a()Z

    .line 554
    :cond_9
    return-void
.end method

.method public k()J
    .registers 5

    .prologue
    .line 574
    iget-object v0, p0, Lr/f;->o:Lac/p;

    invoke-interface {v0}, Lac/p;->p()J

    move-result-wide v0

    .line 575
    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lr/f;->o:Lac/p;

    invoke-interface {v2}, Lac/p;->n()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lr/f;->c:I

    if-nez v2, :cond_21

    .line 578
    iget-object v2, p0, Lr/f;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 580
    :goto_20
    return-wide v0

    :cond_21
    const-wide/16 v0, 0x0

    goto :goto_20
.end method

.method public l()Lr/s;
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, Lr/f;->h:Lr/s;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lr/f;->i:Z

    if-nez v0, :cond_21

    .line 1361
    monitor-enter p0

    .line 1363
    :goto_9
    :try_start_9
    iget-object v0, p0, Lr/f;->h:Lr/s;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lr/f;->i:Z

    if-nez v0, :cond_20

    .line 1364
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_9

    .line 1366
    :catch_15
    move-exception v0

    .line 1367
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1368
    const/4 v0, 0x0

    monitor-exit p0

    .line 1372
    :goto_1f
    return-object v0

    .line 1370
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_24

    .line 1372
    :cond_21
    iget-object v0, p0, Lr/f;->h:Lr/s;

    goto :goto_1f

    .line 1370
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method protected abstract m()Lr/j;
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 640
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_52

    .line 646
    :goto_7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 647
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lr/f;->q:Landroid/os/Looper;

    .line 648
    new-instance v0, Lr/i;

    invoke-direct {v0, p0}, Lr/i;-><init>(Lr/f;)V

    iput-object v0, p0, Lr/f;->p:Landroid/os/Handler;

    .line 684
    monitor-enter p0

    .line 685
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 686
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_6e

    .line 688
    iget-object v0, p0, Lr/f;->h:Lr/s;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lr/f;->h:Lr/s;

    iget-object v1, p0, Lr/f;->x:Ljava/io/File;

    invoke-interface {v0, v1}, Lr/s;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lr/f;->h:Lr/s;

    .line 694
    :cond_2d
    iget-object v0, p0, Lr/f;->h:Lr/s;

    if-eqz v0, :cond_49

    .line 695
    iget-object v0, p0, Lr/f;->l:Ljava/util/Locale;

    iget-object v1, p0, Lr/f;->h:Lr/s;

    invoke-interface {v1}, Lr/s;->f()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 696
    iget-object v0, p0, Lr/f;->h:Lr/s;

    iget-object v1, p0, Lr/f;->l:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lr/s;->a(Ljava/util/Locale;)Z

    .line 698
    :cond_46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/f;->i:Z

    .line 704
    :cond_49
    monitor-enter p0

    .line 705
    :try_start_4a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 706
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_71

    .line 707
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 708
    return-void

    .line 641
    :catch_52
    move-exception v0

    .line 642
    invoke-virtual {p0}, Lr/f;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 686
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 706
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method
