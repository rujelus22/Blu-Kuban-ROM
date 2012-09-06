.class public LPm;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final a:I

.field private a:LPp;

.field private final a:Landroid/content/Context;

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "LPo;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, LPm;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, LPm;->b:[Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LPm;->a:Landroid/os/Handler;

    .line 207
    iput p2, p0, LPm;->a:I

    .line 208
    iput-object p1, p0, LPm;->a:Landroid/content/Context;

    .line 209
    return-void
.end method

.method static synthetic a(LPm;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LPm;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(J[B)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-boolean v0, p0, LPm;->b:Z

    if-eqz v0, :cond_6

    .line 394
    :goto_5
    return-void

    .line 383
    :cond_6
    new-instance v0, LPo;

    invoke-direct {v0, v1}, LPo;-><init>(LPn;)V

    .line 384
    const/4 v1, 0x2

    iput v1, v0, LPo;->a:I

    .line 385
    if-eqz p3, :cond_1e

    .line 387
    const/4 v1, 0x0

    :try_start_11
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 388
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, LPo;->a:Ljava/lang/ref/SoftReference;
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_1e} :catch_28

    .line 393
    :cond_1e
    :goto_1e
    iget-object v1, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 389
    :catch_28
    move-exception v1

    goto :goto_1e
.end method

.method static synthetic a(LPm;J[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, LPm;->a(J[B)V

    return-void
.end method

.method static synthetic a(LPm;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, LPm;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 401
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 411
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 412
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 413
    iget-object v1, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPo;

    .line 414
    if-eqz v1, :cond_10

    iget v3, v1, LPo;->a:I

    if-nez v3, :cond_10

    .line 416
    const/4 v3, 0x1

    iput v3, v1, LPo;->a:I

    .line 417
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 421
    :cond_38
    return-void
.end method

.method private a(Landroid/widget/ImageView;J)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPo;

    .line 242
    if-nez v0, :cond_28

    .line 243
    new-instance v0, LPo;

    invoke-direct {v0, v5}, LPo;-><init>(LPn;)V

    .line 244
    iget-object v1, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_1f
    :goto_1f
    iget v1, p0, LPm;->a:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iput v3, v0, LPo;->a:I

    move v0, v3

    .line 267
    :goto_27
    return v0

    .line 245
    :cond_28
    iget v1, v0, LPo;->a:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    .line 248
    iget-object v1, v0, LPo;->a:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_38

    .line 249
    iget v0, p0, LPm;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v2

    .line 250
    goto :goto_27

    .line 253
    :cond_38
    iget-object v1, v0, LPo;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 254
    if-eqz v1, :cond_47

    .line 255
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v2

    .line 256
    goto :goto_27

    .line 261
    :cond_47
    iput-object v5, v0, LPo;->a:Ljava/lang/ref/SoftReference;

    goto :goto_1f
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, LPm;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LPm;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LPm;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, LPm;->a:LPp;

    if-eqz v0, :cond_c

    .line 272
    iget-object v0, p0, LPm;->a:LPp;

    invoke-virtual {v0}, LPp;->quit()Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, LPm;->a:LPp;

    .line 275
    :cond_c
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 316
    const-string v0, "ContactPhotoLoader"

    const-string v1, "Loading Requested."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean v0, p0, LPm;->a:Z

    if-nez v0, :cond_13

    .line 318
    iput-boolean v2, p0, LPm;->a:Z

    .line 319
    iget-object v0, p0, LPm;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    :cond_13
    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    .line 358
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 359
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 360
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 361
    iget-object v1, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 362
    invoke-direct {p0, v0, v3, v4}, LPm;->a(Landroid/widget/ImageView;J)Z

    move-result v0

    .line 363
    if-eqz v0, :cond_a

    .line 364
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 368
    :cond_2c
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 369
    invoke-direct {p0}, LPm;->e()V

    .line 373
    :goto_37
    return-void

    .line 371
    :cond_38
    invoke-direct {p0}, LPm;->f()V

    goto :goto_37
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 282
    invoke-virtual {p0}, LPm;->c()V

    .line 283
    invoke-direct {p0}, LPm;->e()V

    .line 284
    invoke-virtual {p0}, LPm;->b()V

    .line 285
    return-void
.end method

.method public a(Landroid/widget/ImageView;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_11

    .line 219
    iget v0, p0, LPm;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_10
    :goto_10
    return-void

    .line 222
    :cond_11
    invoke-direct {p0, p1, p2, p3}, LPm;->a(Landroid/widget/ImageView;J)Z

    move-result v0

    .line 223
    if-eqz v0, :cond_1d

    .line 224
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 226
    :cond_1d
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-boolean v0, p0, LPm;->b:Z

    if-nez v0, :cond_10

    .line 229
    invoke-direct {p0}, LPm;->f()V

    goto :goto_10
.end method

.method public b()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 289
    iget-object v0, p0, LPm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 290
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, LPm;->b:Z

    .line 297
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, LPm;->b:Z

    .line 304
    iget-object v0, p0, LPm;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 305
    invoke-direct {p0}, LPm;->f()V

    .line 307
    :cond_e
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_34

    move v0, v1

    .line 349
    :cond_8
    :goto_8
    return v0

    .line 330
    :pswitch_9
    iput-boolean v1, p0, LPm;->a:Z

    .line 331
    iget-boolean v1, p0, LPm;->b:Z

    if-nez v1, :cond_8

    .line 332
    iget-object v1, p0, LPm;->a:LPp;

    if-nez v1, :cond_25

    .line 333
    new-instance v1, LPp;

    iget-object v2, p0, LPm;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LPp;-><init>(LPm;Landroid/content/ContentResolver;)V

    iput-object v1, p0, LPm;->a:LPp;

    .line 334
    iget-object v1, p0, LPm;->a:LPp;

    invoke-virtual {v1}, LPp;->start()V

    .line 337
    :cond_25
    iget-object v1, p0, LPm;->a:LPp;

    invoke-virtual {v1}, LPp;->a()V

    goto :goto_8

    .line 343
    :pswitch_2b
    iget-boolean v1, p0, LPm;->b:Z

    if-nez v1, :cond_8

    .line 344
    invoke-direct {p0}, LPm;->g()V

    goto :goto_8

    .line 328
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2b
    .end packed-switch
.end method
