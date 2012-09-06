.class public Lcom/a/b/d;
.super Lcom/a/b/a;


# static fields
.field private static A:Landroid/graphics/Bitmap;

.field private static a:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Ljava/util/Map;

.field private static k:Ljava/util/Map;

.field private static l:Ljava/util/Map;

.field private static m:Ljava/util/HashMap;

.field private static z:Landroid/graphics/Bitmap;


# instance fields
.field private n:Ljava/lang/ref/WeakReference;

.field private o:I

.field private p:I

.field private q:Ljava/io/File;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:Landroid/graphics/Bitmap;

.field private u:F

.field private v:Z

.field private w:F

.field private x:Z

.field private y:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    sput v0, Lcom/a/b/d;->a:I

    sput v0, Lcom/a/b/d;->f:I

    const/16 v0, 0x9c4

    sput v0, Lcom/a/b/d;->g:I

    const v0, 0x27100

    sput v0, Lcom/a/b/d;->h:I

    const v0, 0xf4240

    sput v0, Lcom/a/b/d;->i:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/b/d;->m:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/a/b/d;->z:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/a/b/d;->A:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/a/b/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/d;->v:Z

    const v0, 0x7f7fffff

    iput v0, p0, Lcom/a/b/d;->w:F

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/a/b/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/d;

    invoke-virtual {v0}, Lcom/a/b/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/d;

    invoke-virtual {v0}, Lcom/a/b/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/a/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static a(II)I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xa

    if-lt v0, v2, :cond_7

    :cond_6
    return v1

    :cond_7
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_6

    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .registers 6

    iget v0, p0, Lcom/a/b/d;->o:I

    iget-boolean v1, p0, Lcom/a/b/d;->v:Z

    iget-object v2, p0, Lcom/a/b/d;->y:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/a/b/d;->a(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_40

    const-string v0, "inMutable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/a/b/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput v3, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v0, p4

    :goto_10
    :try_start_10
    invoke-static {p0, p1, v0}, Lcom/a/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_13} :catch_62

    move-result-object v0

    if-eqz p4, :cond_3f

    :try_start_16
    const-string v2, "reused"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "inBitmap"

    invoke-static {p4, v2, v0}, Lcom/a/b/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_3f} :catch_6f

    :cond_3f
    :goto_3f
    return-object v0

    :cond_40
    if-lez p2, :cond_71

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v2}, Lcom/a/b/d;->a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_56

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_56
    invoke-static {v0, p2}, Lcom/a/b/d;->a(II)I

    move-result v2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_10

    :catch_62
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_65
    sput-object v1, Lcom/a/b/d;->k:Ljava/util/Map;

    sput-object v1, Lcom/a/b/d;->j:Ljava/util/Map;

    sput-object v1, Lcom/a/b/d;->l:Ljava/util/Map;

    invoke-static {v2}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_3f

    :catch_6f
    move-exception v2

    goto :goto_65

    :cond_71
    move-object v0, v1

    goto :goto_10
.end method

.method private static a(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .registers 14

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_15

    new-instance v0, Lcom/a/c/e;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/a/c/e;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-gtz p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 15

    if-nez p2, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-eqz p3, :cond_19

    iget v2, p0, Lcom/a/b/d;->u:F

    iget v3, p0, Lcom/a/b/d;->w:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_19
    iget-object v0, p0, Lcom/a/b/d;->c:Lcom/a/b/c;

    if-eqz v0, :cond_6

    iget-object v8, p0, Lcom/a/b/d;->t:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/a/b/d;->p:I

    iget v9, p0, Lcom/a/b/d;->s:I

    iget v2, p0, Lcom/a/b/d;->u:F

    iget v3, p0, Lcom/a/b/d;->w:F

    iget-object v1, p0, Lcom/a/b/d;->c:Lcom/a/b/c;

    invoke-virtual {v1}, Lcom/a/b/c;->i()I

    move-result v10

    invoke-virtual {p0}, Lcom/a/b/d;->c()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/a/b/d;->y:Landroid/graphics/BitmapFactory$Options;

    if-eqz p2, :cond_df

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_df

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_df

    sget-object v1, Lcom/a/b/d;->z:Landroid/graphics/Bitmap;

    if-eq p2, v1, :cond_df

    const/4 p2, 0x0

    move-object v1, p2

    :goto_49
    if-eqz v1, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4f
    :goto_4f
    if-nez v1, :cond_67

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_56
    const/4 v6, -0x2

    if-ne v0, v6, :cond_5f

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    :cond_5f
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4f

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    :cond_67
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v6, 0x0

    packed-switch v9, :pswitch_data_e2

    :cond_70
    const/4 v0, 0x0

    :goto_71
    if-eqz v0, :cond_ca

    if-nez v8, :cond_a8

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v1, v7

    :goto_8b
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_d6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    :pswitch_9c
    const/4 v0, 0x1

    goto :goto_71

    :pswitch_9e
    const/4 v0, 0x3

    if-ne v10, v0, :cond_a3

    const/4 v0, 0x1

    goto :goto_71

    :cond_a3
    :pswitch_a3
    const/4 v0, 0x1

    if-ne v10, v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_a8
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v7, v1, v0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    move-object v1, v0

    move-object v0, v6

    goto :goto_8b

    :cond_ca
    if-lez v9, :cond_dc

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v1, v7

    goto :goto_8b

    :cond_d6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    :cond_dc
    move-object v0, v6

    move-object v1, v7

    goto :goto_8b

    :cond_df
    move-object v1, p2

    goto/16 :goto_49

    :pswitch_data_e2
    .packed-switch -0x3
        :pswitch_9e
        :pswitch_a3
        :pswitch_9c
    .end packed-switch
.end method

.method private a(Lcom/a/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p3, p4}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_1a
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/a/b/d;->a(Z)V

    goto :goto_5

    :cond_1e
    invoke-direct {p0, p3, p4, v1}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1a
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_6

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    iget v1, p0, Lcom/a/b/d;->o:I

    iget-boolean v0, p0, Lcom/a/b/d;->x:Z

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/a/b/d;->j()Ljava/util/Map;

    move-result-object v0

    :goto_15
    invoke-static {p1, v1}, Lcom/a/b/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void

    :cond_1d
    sget v0, Lcom/a/b/d;->g:I

    if-gt v2, v0, :cond_26

    invoke-static {}, Lcom/a/b/d;->i()Ljava/util/Map;

    move-result-object v0

    goto :goto_15

    :cond_26
    invoke-static {}, Lcom/a/b/d;->h()Ljava/util/Map;

    move-result-object v0

    goto :goto_15
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/a/b/c;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/d;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/a/b/d;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_18
    invoke-direct {p0, p0, p1, v0, p2}, Lcom/a/b/d;->a(Lcom/a/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_1b
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/d;

    iput-object p3, v2, Lcom/a/b/d;->c:Lcom/a/b/c;

    invoke-direct {p0, v2, p1, v0, p2}, Lcom/a/b/d;->a(Lcom/a/b/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_25
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    sget-object v0, Lcom/a/b/d;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_27

    sget-object v0, Lcom/a/b/d;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/b/d;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    return-void

    :cond_20
    sget-object v0, Lcom/a/b/d;->m:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_27
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/d;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/a/b/d;->r:Landroid/graphics/Bitmap;

    :cond_7
    :goto_7
    return-object v1

    :cond_8
    iget-boolean v0, p0, Lcom/a/b/d;->e:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/a/b/d;->o:I

    invoke-static {p1, v0}, Lcom/a/b/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/a/b/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_28

    invoke-static {}, Lcom/a/b/d;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_28
    if-nez v0, :cond_41

    invoke-static {}, Lcom/a/b/d;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/a/b/d;->e()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_41

    sput-object v1, Lcom/a/b/d;->l:Ljava/util/Map;

    move-object v0, v1

    :cond_41
    move-object v1, v0

    goto :goto_7
.end method

.method private static h()Ljava/util/Map;
    .registers 4

    sget-object v0, Lcom/a/b/d;->k:Ljava/util/Map;

    if-nez v0, :cond_15

    new-instance v0, Lcom/a/c/b;

    sget v1, Lcom/a/b/d;->f:I

    sget v2, Lcom/a/b/d;->h:I

    sget v3, Lcom/a/b/d;->i:I

    invoke-direct {v0, v1, v2, v3}, Lcom/a/c/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/b/d;->k:Ljava/util/Map;

    :cond_15
    sget-object v0, Lcom/a/b/d;->k:Ljava/util/Map;

    return-object v0
.end method

.method private static i()Ljava/util/Map;
    .registers 4

    sget-object v0, Lcom/a/b/d;->j:Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Lcom/a/c/b;

    sget v1, Lcom/a/b/d;->a:I

    sget v2, Lcom/a/b/d;->g:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/a/c/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/b/d;->j:Ljava/util/Map;

    :cond_16
    sget-object v0, Lcom/a/b/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method private static j()Ljava/util/Map;
    .registers 4

    sget-object v0, Lcom/a/b/d;->l:Ljava/util/Map;

    if-nez v0, :cond_16

    new-instance v0, Lcom/a/c/b;

    const/16 v1, 0x64

    sget v2, Lcom/a/b/d;->h:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/a/c/b;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/b/d;->l:Ljava/util/Map;

    :cond_16
    sget-object v0, Lcom/a/b/d;->l:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)Lcom/a/b/d;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/b/d;->n:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected final a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/a/b/d;->q:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/b/d;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/b/d;->q:Ljava/io/File;

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/a/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e
.end method

.method protected final synthetic a(Ljava/io/File;Lcom/a/b/c;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a([BLcom/a/b/c;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/a/b/d;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3b

    iget v2, p0, Lcom/a/b/d;->p:I

    if-lez v2, :cond_3c

    iget-object v0, p0, Lcom/a/b/d;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4b

    iget v1, p0, Lcom/a/b/d;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/b/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/a/b/d;->p:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-direct {p0, v2, v0}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_30
    :goto_30
    invoke-virtual {p2}, Lcom/a/b/c;->f()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/b/d;->x:Z

    :cond_3b
    return-object v0

    :cond_3c
    iget v1, p0, Lcom/a/b/d;->p:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_46

    iget v1, p0, Lcom/a/b/d;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    :cond_46
    sget-object v0, Lcom/a/b/d;->A:Landroid/graphics/Bitmap;

    goto :goto_30

    :cond_49
    move-object v0, v1

    goto :goto_30

    :cond_4b
    move-object v0, v1

    goto :goto_30
.end method

.method public final a(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const v4, 0x40ff0001

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/a/b/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/d;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v1, :cond_1b

    invoke-virtual {p0, v2}, Lcom/a/b/d;->a(Z)V

    invoke-direct {p0, v0, v5, v2}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lcom/a/b/c;

    invoke-direct {v0}, Lcom/a/b/c;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/a/b/c;->a(I)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/d;->c:Lcom/a/b/c;

    iget-object v0, p0, Lcom/a/b/d;->c:Lcom/a/b/c;

    invoke-direct {p0, v1, v2, v0}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/a/b/c;)V

    goto :goto_1a

    :cond_3a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/a/b/d;->t:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5e

    :cond_48
    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/a/b/d;->t:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_71

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/a/b/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/a/b/d;->t:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2, v3}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_5e
    :goto_5e
    sget-object v2, Lcom/a/b/d;->m:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-direct {p0, v1, v0}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/a/b/a;->a(Landroid/content/Context;)V

    goto :goto_1a

    :cond_71
    invoke-direct {p0, v0, v5, v3}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_5e

    :cond_75
    invoke-virtual {p0, v3}, Lcom/a/b/d;->a(Z)V

    invoke-direct {p0, v1, v0}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1a
.end method

.method protected a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/d;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/a/b/c;)V
    .registers 4

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/a/b/c;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/a/b/d;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/d;->o:I

    return-object p0
.end method

.method public final g()Lcom/a/b/d;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/d;->p:I

    return-object p0
.end method
