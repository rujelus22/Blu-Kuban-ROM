.class public final Lcom/dropbox/android/filemanager/F;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Lcom/dropbox/android/filemanager/F;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/filemanager/F;->a:Lcom/dropbox/android/filemanager/F;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/F;->c:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/dropbox/android/filemanager/R;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/R;-><init>(Lcom/dropbox/android/filemanager/F;)V

    .line 51
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/R;->setPriority(I)V

    .line 52
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/R;->start()V

    .line 53
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v11, 0x3ff8

    const/4 v10, 0x0

    .line 877
    const/4 v0, 0x3

    if-ne p1, v0, :cond_51

    .line 878
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 879
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 885
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 887
    int-to-double v6, v1

    int-to-double v8, v5

    mul-double/2addr v8, v11

    cmpl-double v0, v6, v8

    if-gtz v0, :cond_28

    int-to-double v6, v4

    int-to-double v8, v5

    mul-double/2addr v8, v11

    cmpl-double v0, v6, v8

    if-lez v0, :cond_51

    .line 892
    :cond_28
    if-le v1, v4, :cond_52

    .line 893
    sub-int v0, v1, v4

    div-int/lit8 v1, v0, 0x2

    move v3, v4

    .line 900
    :goto_2f
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {v0, v10, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 901
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v5, v5

    invoke-direct {v6, v10, v10, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 902
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 903
    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v0, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 905
    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 906
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 910
    :cond_51
    return-object p0

    .line 896
    :cond_52
    sub-int v0, v4, v1

    div-int/lit8 v0, v0, 0x2

    move v4, v1

    move v3, v1

    move v1, v2

    move v2, v0

    .line 897
    goto :goto_2f
.end method

.method public static a(Landroid/net/Uri;ZLjava/lang/String;ILandroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 830
    invoke-static {p2}, Lcom/dropbox/android/filemanager/F;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 831
    const/4 v3, 0x0

    .line 832
    if-eqz v0, :cond_15

    .line 833
    invoke-static {v0, p3, p4}, Lcom/dropbox/android/filemanager/F;->a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 834
    if-eq v3, v0, :cond_15

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move v4, p5

    move v5, p3

    .line 835
    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/filemanager/F;->b(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 838
    :cond_15
    return-object v3
.end method

.method protected static a(Ljava/lang/String;ZZI)Landroid/graphics/Bitmap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_94

    .line 242
    if-nez p1, :cond_ba

    .line 246
    :try_start_a
    const-string v0, "android.media.MediaFile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 247
    const-string v0, "getFileType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 248
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_b8

    .line 250
    const-string v4, "android.media.MediaFile$MediaFileType"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 251
    const-string v5, "fileType"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 252
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    const-string v4, "isVideoFileType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 255
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_5f} :catch_b6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_5f} :catch_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_5f} :catch_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_5f} :catch_b0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_5f} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_5f} :catch_ac
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_5f} :catch_aa

    move-result v0

    :goto_60
    move v1, v0

    .line 268
    :goto_61
    if-eqz v1, :cond_68

    .line 269
    :try_start_63
    invoke-static {p0, p3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    :goto_67
    return-object v0

    .line 272
    :cond_68
    const-class v0, Landroid/media/ThumbnailUtils;

    const-string v1, "createImageThumbnail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_a0

    .line 276
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_93
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_93} :catch_a8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_63 .. :try_end_93} :catch_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_93} :catch_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_63 .. :try_end_93} :catch_a2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_63 .. :try_end_93} :catch_9f

    goto :goto_67

    .line 286
    :cond_94
    if-eqz p1, :cond_9a

    if-eqz p2, :cond_9a

    move-object v0, v2

    .line 287
    goto :goto_67

    .line 289
    :cond_9a
    invoke-static {p0, p3}, Lcom/dropbox/android/util/aQ;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_67

    .line 283
    :catch_9f
    move-exception v0

    :cond_a0
    :goto_a0
    move-object v0, v2

    .line 292
    goto :goto_67

    .line 282
    :catch_a2
    move-exception v0

    goto :goto_a0

    .line 281
    :catch_a4
    move-exception v0

    goto :goto_a0

    .line 280
    :catch_a6
    move-exception v0

    goto :goto_a0

    .line 279
    :catch_a8
    move-exception v0

    goto :goto_a0

    .line 263
    :catch_aa
    move-exception v0

    goto :goto_61

    .line 262
    :catch_ac
    move-exception v0

    goto :goto_61

    .line 261
    :catch_ae
    move-exception v0

    goto :goto_61

    .line 260
    :catch_b0
    move-exception v0

    goto :goto_61

    .line 259
    :catch_b2
    move-exception v0

    goto :goto_61

    .line 258
    :catch_b4
    move-exception v0

    goto :goto_61

    .line 257
    :catch_b6
    move-exception v0

    goto :goto_61

    :cond_b8
    move v0, v1

    goto :goto_60

    :cond_ba
    move v1, p2

    goto :goto_61
.end method

.method protected static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;)Lcom/dropbox/android/filemanager/L;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_16

    .line 334
    invoke-static {v1, p0, p1}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 335
    if-lez v2, :cond_16

    .line 336
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 321
    .line 322
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_1d

    aget-object v3, v1, v0

    .line 323
    invoke-static {v3, p0, p1}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 324
    if-lez v4, :cond_1a

    .line 325
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    :goto_19
    return-object v0

    .line 322
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 328
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a()Lcom/dropbox/android/filemanager/F;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/android/filemanager/F;->a:Lcom/dropbox/android/filemanager/F;

    if-nez v0, :cond_a

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 67
    :cond_a
    sget-object v0, Lcom/dropbox/android/filemanager/F;->a:Lcom/dropbox/android/filemanager/F;

    return-object v0
.end method

.method protected static a(Landroid/net/Uri;)Lcom/dropbox/android/filemanager/L;
    .registers 7
    .parameter

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v4, :cond_2a

    aget-object v0, v3, v1

    .line 302
    invoke-static {v0}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 306
    :goto_25
    return-object v0

    .line 301
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 306
    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/F;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/dropbox/android/filemanager/F;->a:Lcom/dropbox/android/filemanager/F;

    if-nez v0, :cond_c

    .line 57
    new-instance v0, Lcom/dropbox/android/filemanager/F;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/F;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/filemanager/F;->a:Lcom/dropbox/android/filemanager/F;

    .line 61
    return-void

    .line 59
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static synthetic a(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static/range {p0 .. p5}, Lcom/dropbox/android/filemanager/F;->b(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/P;)V
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/dropbox/android/filemanager/F;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 344
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/filemanager/F;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 311
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 312
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    :cond_2c
    return-object p0
.end method

.method private static b(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    :try_start_45
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 850
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p3, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 851
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 852
    if-eqz v2, :cond_96

    .line 853
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 854
    if-eqz p1, :cond_97

    .line 855
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v0, "width"

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v0, "height"

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v0, "kind"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v0, "video_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    :goto_8f
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 873
    :cond_96
    :goto_96
    return-void

    .line 861
    :cond_97
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v0, "width"

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v0, "height"

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v0, "kind"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v0, "image_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_c8} :catch_c9

    goto :goto_8f

    .line 870
    :catch_c9
    move-exception v0

    goto :goto_96
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 822
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 823
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 824
    invoke-static {}, Lcom/dropbox/android/util/aO;->a()[B

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 825
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZIILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/android/filemanager/I;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/filemanager/I;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILcom/dropbox/android/filemanager/O;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    .line 132
    return-object v0
.end method

.method protected final a(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_3d

    .line 146
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1, p3}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 147
    if-eqz v4, :cond_3d

    .line 148
    new-instance v2, Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v6, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v6, v1, p3}, Lcom/dropbox/android/filemanager/L;->b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    move-object v0, v2

    .line 159
    :goto_3c
    return-object v0

    .line 155
    :cond_3d
    if-eqz v3, :cond_56

    .line 156
    new-instance v0, Lcom/dropbox/android/filemanager/N;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/android/filemanager/L;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/N;-><init>(Lcom/dropbox/android/filemanager/L;IIILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    .line 159
    :cond_56
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public final a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v0

    .line 103
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/android/filemanager/F;->c(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v0

    goto :goto_e
.end method

.method protected final a(Landroid/net/Uri;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_2c

    .line 165
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v3, v1, p2}, Lcom/dropbox/android/filemanager/L;->c(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 175
    :cond_2b
    :goto_2b
    return-void

    .line 172
    :cond_2c
    if-eqz v2, :cond_2b

    .line 173
    new-instance v0, Lcom/dropbox/android/filemanager/N;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/android/filemanager/L;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/N;-><init>(Lcom/dropbox/android/filemanager/L;IIILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    goto :goto_2b
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 109
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;I)V

    .line 113
    :goto_d
    return-void

    .line 111
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;I)V

    goto :goto_d
.end method

.method protected final b(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v0, Lcom/dropbox/android/filemanager/H;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dropbox/android/filemanager/H;-><init>(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)V

    .line 234
    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    .line 235
    return-object v0
.end method

.method public final b(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 117
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/dropbox/android/filemanager/F;->b(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;

    move-result-object v0

    .line 119
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/android/filemanager/F;->d(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;

    move-result-object v0

    goto :goto_e
.end method

.method protected final b(Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 209
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 212
    if-eqz v4, :cond_32

    .line 213
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v6, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v6, v1, p2}, Lcom/dropbox/android/filemanager/L;->c(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 224
    :goto_31
    return-void

    .line 219
    :cond_32
    if-eqz v4, :cond_4a

    .line 220
    new-instance v0, Lcom/dropbox/android/filemanager/N;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/android/filemanager/L;

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/N;-><init>(Lcom/dropbox/android/filemanager/L;IIILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    goto :goto_31

    .line 222
    :cond_4a
    new-instance v0, Lcom/dropbox/android/filemanager/K;

    invoke-direct {v0, v2, v3, p2, v5}, Lcom/dropbox/android/filemanager/K;-><init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    goto :goto_31
.end method

.method protected final c(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-static {p1}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    iget-object v0, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_41

    .line 190
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v4, v1, p3}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 191
    if-eqz v4, :cond_41

    .line 192
    new-instance v2, Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v6, p0, Lcom/dropbox/android/filemanager/F;->b:Landroid/content/Context;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v6, v1, p3}, Lcom/dropbox/android/filemanager/L;->b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    move-object v0, v2

    .line 205
    :goto_40
    return-object v0

    .line 199
    :cond_41
    if-eqz v3, :cond_5c

    .line 200
    new-instance v0, Lcom/dropbox/android/filemanager/N;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/android/filemanager/L;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/N;-><init>(Lcom/dropbox/android/filemanager/L;IIILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    .line 205
    :goto_5a
    const/4 v0, 0x0

    goto :goto_40

    .line 202
    :cond_5c
    new-instance v0, Lcom/dropbox/android/filemanager/K;

    invoke-direct {v0, v2, p2, p3, p4}, Lcom/dropbox/android/filemanager/K;-><init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    goto :goto_5a
.end method

.method protected final d(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/android/filemanager/J;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dropbox/android/filemanager/J;-><init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V

    .line 228
    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/F;->a(Lcom/dropbox/android/filemanager/P;)V

    .line 229
    return-object v0
.end method
