.class public LzW;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements LzN;


# static fields
.field private static final a:J


# instance fields
.field private a:I

.field a:LIL;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Landroid/app/Application;
    .annotation runtime Lanr;
    .end annotation
.end field

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LzZ;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LzY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, LzW;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LzW;->a:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, LzW;->a:I

    .line 95
    new-instance v0, LzX;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, LzX;-><init>(LzW;IFZ)V

    iput-object v0, p0, LzW;->b:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LzW;->c:Ljava/util/Map;

    return-void
.end method

.method private a()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 258
    .line 259
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 260
    if-eqz v0, :cond_3d

    .line 261
    array-length v0, v0

    add-int/2addr v0, v1

    :goto_1c
    move v1, v0

    goto :goto_c

    .line 265
    :cond_1e
    iget-object v0, p0, LzW;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzY;

    .line 266
    invoke-virtual {v0}, LzY;->a()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_28

    .line 268
    :cond_3a
    add-int v0, v1, v2

    return v0

    :cond_3d
    move v0, v1

    goto :goto_1c
.end method

.method static synthetic a(LzW;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, LzW;->a:I

    return v0
.end method

.method static synthetic a()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, LzW;->a:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, LzW;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzY;

    .line 128
    if-eqz v0, :cond_28

    .line 129
    invoke-virtual {v0}, LzY;->a()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 130
    invoke-static {v0}, LzY;->a(LzY;)I

    move-result v2

    if-ne v2, p2, :cond_1c

    invoke-static {v0}, LzY;->b(LzY;)I

    move-result v0

    if-ne v0, p3, :cond_1c

    move-object v0, v1

    .line 138
    :goto_1b
    return-object v0

    .line 134
    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iget-object v0, p0, LzW;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_28
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private a(Ljava/lang/String;)LzZ;
    .registers 4
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzZ;

    .line 317
    if-nez v0, :cond_15

    .line 318
    new-instance v0, LzZ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LzZ;-><init>(LzW;LzX;)V

    .line 319
    iget-object v1, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_15
    return-object v0
.end method

.method private a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, LzW;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzY;

    .line 185
    invoke-static {v0}, LzY;->c(LzY;)I

    move-result v2

    iget v3, p0, LzW;->a:I

    if-ge v2, v3, :cond_b

    invoke-static {v0}, LzY;->a(LzY;)Z

    move-result v2

    if-ne p1, v2, :cond_b

    .line 186
    invoke-static {v0}, LzY;->a(LzY;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 190
    :cond_34
    iget v0, p0, LzW;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LzW;->a:I

    .line 193
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method static synthetic b(LzW;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, LzW;->a()I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzZ;

    iget-boolean v5, v0, LzZ;->a:Z

    .line 144
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 145
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 149
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 150
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    .line 151
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 155
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, LzW;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 157
    if-nez v0, :cond_6e

    .line 159
    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null image (bitmap) in url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v2, 0x0

    .line 167
    :goto_6d
    return-object v2

    .line 164
    :cond_6e
    iget-object v6, p0, LzW;->c:Ljava/util/Map;

    new-instance v0, LzY;

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, LzY;-><init>(LzW;Landroid/graphics/drawable/BitmapDrawable;IIZ)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d
.end method


# virtual methods
.method a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, LzW;->a(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_7

    .line 123
    :goto_6
    return-object v0

    .line 119
    :cond_7
    iget-object v0, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    invoke-direct {p0, p1, p2, p3}, LzW;->b(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_6

    .line 123
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LzW;->a(Z)V

    .line 173
    return-void
.end method

.method a(Ljava/lang/String;LAa;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, LzW;->a(Ljava/lang/String;)LzZ;

    move-result-object v0

    .line 297
    iget-object v0, v0, LzZ;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_5

    .line 293
    :cond_4
    :goto_4
    return-void

    .line 279
    :cond_5
    iget-object v0, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzZ;

    .line 280
    if-nez v0, :cond_17

    .line 281
    const-string v0, "ImageCache"

    const-string v1, "fetchData attempted for image which was never requested."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 285
    :cond_17
    iget-boolean v1, v0, LzZ;->b:Z

    if-nez v1, :cond_4

    iget v1, v0, LzZ;->a:I

    if-nez v1, :cond_4

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, v0, LzZ;->b:Z

    .line 287
    iget v1, v0, LzZ;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LzZ;->a:I

    .line 288
    new-instance v1, LzM;

    invoke-direct {v1}, LzM;-><init>()V

    invoke-virtual {v1, p1}, LzM;->a(Ljava/lang/String;)LzM;

    move-result-object v1

    invoke-virtual {v1, p0}, LzM;->a(LzW;)LzM;

    move-result-object v1

    iget-object v2, p0, LzW;->a:LIL;

    invoke-virtual {v1, v2}, LzM;->a(LIL;)LzM;

    move-result-object v1

    invoke-virtual {v1, p2}, LzM;->b(Ljava/lang/String;)LzM;

    move-result-object v1

    iget-object v2, p0, LzW;->a:LXP;

    invoke-virtual {v1, v2}, LzM;->a(LXP;)LzM;

    move-result-object v1

    iget-boolean v0, v0, LzZ;->a:Z

    invoke-virtual {v1, v0}, LzM;->a(Z)LzM;

    move-result-object v0

    invoke-virtual {v0}, LzM;->a()LzK;

    move-result-object v0

    .line 291
    iget-object v1, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method a(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1}, LzW;->a(Ljava/lang/String;)LzZ;

    move-result-object v0

    .line 302
    iput-boolean p2, v0, LzZ;->a:Z

    .line 303
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, LzW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzZ;

    .line 231
    if-nez v0, :cond_13

    .line 232
    const-string v0, "ImageCache"

    const-string v1, "Received image which was not requested."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_12
    return-void

    .line 235
    :cond_13
    iput-boolean v2, v0, LzZ;->b:Z

    .line 236
    if-eqz p2, :cond_1e

    .line 237
    iget-object v1, p0, LzW;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput v2, v0, LzZ;->a:I

    .line 243
    :cond_1e
    iget-object v1, v0, LzZ;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAa;

    .line 244
    if-eqz v1, :cond_24

    .line 245
    invoke-interface {v1, p1}, LAa;->a(Ljava/lang/String;)V

    goto :goto_24

    .line 248
    :cond_36
    iget-object v0, v0, LzZ;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_12
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_e

    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, LzW;->a(Ljava/lang/String;)LzZ;

    move-result-object v0

    .line 307
    iget-boolean v0, v0, LzZ;->b:Z

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LzW;->a(Z)V

    .line 178
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    .line 204
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    .line 208
    :goto_b
    return-void

    .line 206
    :cond_c
    const-string v0, "ImageCache"

    const-string v1, "Background loader was already running."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public d()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    .line 217
    iget-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, LzW;->a:Ljava/util/concurrent/ExecutorService;

    .line 220
    :cond_c
    return-void
.end method
