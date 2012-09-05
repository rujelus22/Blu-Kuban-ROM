.class final Lcom/google/googlenav/appwidget/friends/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lax/aP;

.field private final c:Ljava/util/List;

.field private final d:J

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lax/aP;Ljava/util/List;ZJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lax/aP;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    iput-wide p5, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    return-void
.end method

.method public static a()Lcom/google/googlenav/appwidget/friends/c;
    .registers 11

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    if-nez v1, :cond_17

    :cond_15
    move-object v0, v7

    :goto_16
    return-object v0

    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lam/b;

    sget-object v1, LbD/Z;->z:Lam/e;

    invoke-direct {v8, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v8, v0}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_d2

    new-instance v2, Lax/aP;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lax/aP;-><init>(Lax/aS;ZLcom/google/googlenav/ah;)V

    :goto_3d
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lam/b;->l(I)I

    move-result v0

    move v3, v4

    :goto_49
    if-ge v3, v0, :cond_61

    new-instance v5, Lax/aP;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v10

    invoke-static {v10}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v10

    invoke-direct {v5, v6, v9, v10}, Lax/aP;-><init>(Lax/aS;ZLcom/google/googlenav/ah;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_61
    :goto_61
    sget v3, Lcom/google/googlenav/appwidget/friends/b;->a:I

    if-ge v0, v3, :cond_6c

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_6c
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lam/b;->l(I)I

    move-result v0

    :goto_75
    if-ge v4, v0, :cond_ad

    const/4 v5, 0x3

    invoke-virtual {v8, v5, v4}, Lam/b;->b(II)[B

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_86

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_86
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_9b} :catch_9c

    goto :goto_83

    :catch_9c
    move-exception v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    move-object v0, v7

    goto/16 :goto_16

    :cond_ad
    :goto_ad
    :try_start_ad
    sget v4, Lcom/google/googlenav/appwidget/friends/b;->a:I

    if-ge v0, v4, :cond_b8

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_b8
    const/4 v0, 0x5

    invoke-static {v8, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v4

    const-wide/high16 v5, -0x8000

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_cb

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lam/b;->e(I)J

    move-result-wide v5

    :cond_cb
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lax/aP;Ljava/util/List;ZJ)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_d0} :catch_9c

    goto/16 :goto_16

    :cond_d2
    move-object v2, v7

    goto/16 :goto_3d
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lax/aP;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/friends/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    return-wide v0
.end method


# virtual methods
.method public b()V
    .registers 7

    :try_start_0
    new-instance v1, Lam/b;

    sget-object v0, LbD/Z;->z:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lax/aP;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lax/aP;

    invoke-virtual {v2}, Lax/aP;->a()Lcom/google/googlenav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    invoke-virtual {v1, v0, v2}, Lam/b;->a(IZ)V

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    if-eqz v0, :cond_29

    const/4 v3, 0x2

    invoke-virtual {v0}, Lax/aP;->a()Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_29

    :catch_44
    move-exception v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_78

    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Lam/b;->a(I[B)V

    goto :goto_62

    :cond_78
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v0, 0x3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lam/b;->a(I[B)V

    goto :goto_62

    :cond_8f
    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Lam/b;->a(I[B)V

    goto :goto_62

    :cond_97
    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a5

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lam/b;->a(IJ)V

    :cond_a5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_be} :catch_44

    return-void
.end method

.method public c()Lax/aP;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lax/aP;

    return-object v0
.end method
