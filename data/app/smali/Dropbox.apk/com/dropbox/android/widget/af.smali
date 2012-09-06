.class public final Lcom/dropbox/android/widget/af;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/E;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/GalleryView;

.field private final b:Ldbxyzptlk/l/o;

.field private final c:Lcom/dropbox/android/filemanager/LocalEntry;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/GalleryView;Lcom/dropbox/android/filemanager/LocalEntry;Ldbxyzptlk/l/o;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/af;->p:Z

    .line 1181
    iput-object p2, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 1182
    iput-object p3, p0, Lcom/dropbox/android/widget/af;->b:Ldbxyzptlk/l/o;

    .line 1183
    invoke-static {p1}, Lcom/dropbox/android/widget/GalleryView;->c(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    iget-object v1, p2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 1184
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->j:F

    return v0
.end method

.method private declared-synchronized a(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter

    .prologue
    .line 1195
    monitor-enter p0

    if-eqz p1, :cond_28

    .line 1196
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    .line 1197
    iput-object p1, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    .line 1198
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/dropbox/android/widget/af;->d:I

    .line 1199
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/dropbox/android/widget/af;->e:I

    .line 1201
    if-eq v0, p1, :cond_28

    if-eqz v0, :cond_28

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_28

    .line 1202
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1203
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1208
    :cond_28
    iget v0, p0, Lcom/dropbox/android/widget/af;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4a

    .line 1210
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1211
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1}, Lcom/dropbox/android/widget/GalleryView;->e(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1212
    invoke-virtual {p0}, Lcom/dropbox/android/widget/af;->e()F

    move-result v2

    .line 1213
    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(FFF)Z
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_54

    .line 1217
    :goto_48
    monitor-exit p0

    return-void

    .line 1215
    :cond_4a
    :try_start_4a
    iget v0, p0, Lcom/dropbox/android/widget/af;->h:F

    iget v1, p0, Lcom/dropbox/android/widget/af;->i:F

    iget v2, p0, Lcom/dropbox/android/widget/af;->j:F

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/android/widget/af;->a(FFF)Z
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_54

    goto :goto_48

    .line 1195
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/dropbox/android/taskqueue/m;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1388
    monitor-enter p0

    .line 1389
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/dropbox/android/widget/af;->p:Z

    .line 1390
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    .line 1391
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->g:Lcom/dropbox/android/taskqueue/m;

    if-ne p1, v0, :cond_17

    .line 1392
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->f(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ad;->sendEmptyMessage(I)Z

    .line 1396
    :goto_13
    return-void

    .line 1390
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0

    .line 1394
    :cond_17
    invoke-direct {p0, p2}, Lcom/dropbox/android/widget/af;->a(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/dropbox/android/widget/af;->q:Ljava/lang/CharSequence;

    .line 1221
    invoke-direct {p0}, Lcom/dropbox/android/widget/af;->g()V

    .line 1222
    return-void
.end method

.method private declared-synchronized a(FFF)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 1298
    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/dropbox/android/widget/af;->d:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/dropbox/android/widget/af;->f:F

    .line 1299
    iget v0, p0, Lcom/dropbox/android/widget/af;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/dropbox/android/widget/af;->g:F

    .line 1300
    iget v0, p0, Lcom/dropbox/android/widget/af;->f:F

    mul-float/2addr v0, v2

    .line 1301
    iget v1, p0, Lcom/dropbox/android/widget/af;->g:F

    mul-float/2addr v1, v2

    .line 1302
    sub-float v2, p1, v0

    iput v2, p0, Lcom/dropbox/android/widget/af;->k:F

    .line 1303
    sub-float v2, p2, v1

    iput v2, p0, Lcom/dropbox/android/widget/af;->m:F

    .line 1304
    add-float/2addr v0, p1

    iput v0, p0, Lcom/dropbox/android/widget/af;->l:F

    .line 1305
    add-float v0, p2, v1

    iput v0, p0, Lcom/dropbox/android/widget/af;->n:F

    .line 1307
    iput p1, p0, Lcom/dropbox/android/widget/af;->h:F

    .line 1308
    iput p2, p0, Lcom/dropbox/android/widget/af;->i:F

    .line 1309
    iput p3, p0, Lcom/dropbox/android/widget/af;->j:F
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2d

    .line 1311
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1298
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/dropbox/android/widget/af;FFF)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1165
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/widget/af;->a(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->h:F

    return v0
.end method

.method static synthetic c(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->i:F

    return v0
.end method

.method static synthetic d(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->k:F

    return v0
.end method

.method static synthetic e(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->l:F

    return v0
.end method

.method static synthetic f(Lcom/dropbox/android/widget/af;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->f:F

    return v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->f(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/ad;->sendEmptyMessage(I)Z

    .line 1226
    return-void
.end method

.method static synthetic h(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->g:F

    return v0
.end method

.method static synthetic i(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->m:F

    return v0
.end method

.method static synthetic j(Lcom/dropbox/android/widget/af;)F
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->n:F

    return v0
.end method

.method static synthetic k(Lcom/dropbox/android/widget/af;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method static synthetic l(Lcom/dropbox/android/widget/af;)I
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->d:I

    return v0
.end method

.method static synthetic m(Lcom/dropbox/android/widget/af;)I
    .registers 2
    .parameter

    .prologue
    .line 1165
    iget v0, p0, Lcom/dropbox/android/widget/af;->e:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 1375
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 1376
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/dropbox/android/widget/af;->k:F

    float-to-int v1, v1

    iget v2, p0, Lcom/dropbox/android/widget/af;->m:F

    float-to-int v2, v2

    iget v3, p0, Lcom/dropbox/android/widget/af;->l:F

    float-to-int v3, v3

    iget v4, p0, Lcom/dropbox/android/widget/af;->n:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_31

    .line 1378
    :try_start_16
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_31
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1b} :catch_1d

    .line 1385
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 1379
    :catch_1d
    move-exception v0

    .line 1381
    :try_start_1e
    invoke-static {}, Lcom/dropbox/android/widget/GalleryView;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bad drawable state in gallery"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_31

    goto :goto_1b

    .line 1375
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/dropbox/android/widget/at;Landroid/widget/ProgressBar;Landroid/graphics/Canvas;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1316
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1317
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V

    .line 1357
    :goto_a
    return-void

    .line 1321
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->q:Ljava/lang/CharSequence;

    .line 1323
    if-eqz v0, :cond_54

    .line 1324
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V

    .line 1325
    invoke-virtual {p1, v0}, Lcom/dropbox/android/widget/at;->a(Ljava/lang/CharSequence;)V

    .line 1327
    invoke-virtual {p1}, Lcom/dropbox/android/widget/at;->b()I

    move-result v0

    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    .line 1329
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v3}, Lcom/dropbox/android/widget/at;->setBounds(IIII)V

    .line 1332
    :cond_2c
    invoke-virtual {p1}, Lcom/dropbox/android/widget/at;->c()I

    move-result v0

    .line 1333
    iget v1, p0, Lcom/dropbox/android/widget/af;->h:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v2}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1334
    iget-object v2, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v2}, Lcom/dropbox/android/widget/GalleryView;->e(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 1336
    iget-object v2, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v2}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1, v0, v2, v0}, Lcom/dropbox/android/widget/at;->setBounds(IIII)V

    .line 1337
    invoke-virtual {p1, p3}, Lcom/dropbox/android/widget/at;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 1339
    :cond_54
    iget-boolean v0, p0, Lcom/dropbox/android/widget/af;->p:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a9

    .line 1340
    :cond_5c
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->g(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v0

    if-gtz v0, :cond_7a

    .line 1341
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;I)I

    .line 1343
    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/GalleryView;I)I

    .line 1346
    :cond_7a
    iget v0, p0, Lcom/dropbox/android/widget/af;->h:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1}, Lcom/dropbox/android/widget/GalleryView;->g(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 1347
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->e(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v0

    iget-object v2, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v2}, Lcom/dropbox/android/widget/GalleryView;->h(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    .line 1349
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0, p2}, Lcom/dropbox/android/widget/GalleryView;->b(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V

    .line 1350
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1351
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1352
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    .line 1354
    :cond_a9
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0, p2}, Lcom/dropbox/android/widget/GalleryView;->a(Lcom/dropbox/android/widget/GalleryView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_a
.end method

.method public final a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1411
    invoke-direct {p0, p3, v0}, Lcom/dropbox/android/widget/af;->a(Lcom/dropbox/android/taskqueue/m;Ljava/lang/CharSequence;)V

    .line 1412
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1}, Lcom/dropbox/android/widget/GalleryView;->i(Lcom/dropbox/android/widget/GalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/GalleryView;->c(Lcom/dropbox/android/widget/GalleryView;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1402
    invoke-virtual {p0}, Lcom/dropbox/android/widget/af;->c()Lcom/dropbox/android/taskqueue/D;

    .line 1404
    :cond_15
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->j(Lcom/dropbox/android/widget/GalleryView;)V

    .line 1405
    return-void
.end method

.method public final declared-synchronized a(FF)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1363
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    .line 1365
    iget v2, p0, Lcom/dropbox/android/widget/af;->k:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_21

    iget v2, p0, Lcom/dropbox/android/widget/af;->l:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_21

    iget v2, p0, Lcom/dropbox/android/widget/af;->m:F

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_21

    iget v2, p0, Lcom/dropbox/android/widget/af;->n:F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_45

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_21

    .line 1370
    :cond_1f
    :goto_1f
    monitor-exit p0

    return v0

    :cond_21
    move v0, v1

    .line 1365
    goto :goto_1f

    .line 1368
    :cond_23
    :try_start_23
    iget v2, p0, Lcom/dropbox/android/widget/af;->h:F

    iget-object v3, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v3}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1369
    iget v3, p0, Lcom/dropbox/android/widget/af;->h:F

    iget-object v4, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v4}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_45

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1370
    cmpl-float v2, p1, v2

    if-ltz v2, :cond_43

    cmpg-float v2, p1, v3

    if-lez v2, :cond_1f

    :cond_43
    move v0, v1

    goto :goto_1f

    .line 1363
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 6

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->c(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/widget/af;->b:Ldbxyzptlk/l/o;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 1230
    return-void
.end method

.method public final c()Lcom/dropbox/android/taskqueue/D;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1233
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->c(Lcom/dropbox/android/widget/GalleryView;)Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/widget/af;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/widget/af;->b:Ldbxyzptlk/l/o;

    iget-object v5, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v5}, Lcom/dropbox/android/widget/GalleryView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v1

    .line 1235
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/taskqueue/D;

    iget-boolean v0, v0, Lcom/dropbox/android/taskqueue/D;->b:Z

    if-eqz v0, :cond_51

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/af;->p:Z

    .line 1241
    :goto_28
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/taskqueue/D;

    iget-boolean v0, v0, Lcom/dropbox/android/taskqueue/D;->a:Z

    if-eqz v0, :cond_4c

    .line 1242
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_4c

    .line 1243
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1244
    iput-boolean v6, p0, Lcom/dropbox/android/widget/af;->p:Z

    .line 1245
    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/af;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/af;->a(Ljava/lang/CharSequence;)V

    .line 1250
    :cond_4c
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/taskqueue/D;

    return-object v0

    .line 1238
    :cond_51
    iput-boolean v6, p0, Lcom/dropbox/android/widget/af;->p:Z

    goto :goto_28
.end method

.method public final declared-synchronized d()V
    .registers 3

    .prologue
    .line 1257
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 1258
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    .line 1259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/widget/af;->o:Landroid/graphics/drawable/Drawable;

    .line 1260
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_17

    .line 1261
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1262
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1267
    :cond_17
    monitor-exit p0

    return-void

    .line 1257
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()F
    .registers 4

    .prologue
    .line 1270
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/widget/af;->d:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/dropbox/android/widget/af;->e:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2d

    if-nez v0, :cond_c

    .line 1271
    :cond_9
    const/4 v0, 0x0

    .line 1275
    :goto_a
    monitor-exit p0

    return v0

    .line 1274
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v0}, Lcom/dropbox/android/widget/GalleryView;->d(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/dropbox/android/widget/af;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/dropbox/android/widget/af;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {v1}, Lcom/dropbox/android/widget/GalleryView;->e(Lcom/dropbox/android/widget/GalleryView;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dropbox/android/widget/af;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1275
    const/high16 v1, 0x4080

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2d

    move-result v0

    goto :goto_a

    .line 1270
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .registers 3

    .prologue
    .line 1283
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/dropbox/android/widget/af;->e()F

    move-result v0

    .line 1284
    iget v1, p0, Lcom/dropbox/android/widget/af;->j:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1d

    iget v1, p0, Lcom/dropbox/android/widget/af;->j:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1f

    move-result v0

    const v1, 0x358637bd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    monitor-exit p0

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 1283
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
