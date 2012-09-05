.class public final Lcom/sprint/w/installer/util/UrlImageViewHelper;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"


# static fields
.field public static final CACHE_DURATION:J = 0x5265c00L

.field public static final CACHE_DURATION_INFINITE:I = 0x7fffffff

.field private static log:Lcom/sprint/id/logger/Logger;

.field private static mLastCleaned:J

.field static mMetrics:Landroid/util/DisplayMetrics;

.field private static mPendingCallbacks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendingDownloads:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPendingViews:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingCallbacks:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->loadBitmapFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    return-void
.end method

.method private static cleanup(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const-wide/32 v11, 0x5265c00

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mLastCleaned:J

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_16

    .line 131
    sget-object v7, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "skipping cleanup."

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 155
    :cond_15
    :goto_15
    return-void

    .line 134
    :cond_16
    sget-object v7, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "performing cleanup."

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mLastCleaned:J

    .line 138
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, files:[Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 142
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_30
    if-ge v5, v6, :cond_15

    aget-object v3, v0, v5

    .line 143
    .local v3, file:Ljava/lang/String;
    const-string v7, ".urlimage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 142
    :cond_3c
    :goto_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 147
    :cond_3f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, f:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_3c

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_54} :catch_55

    goto :goto_3c

    .line 152
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/lang/String;
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_55
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 51
    .local v1, stuff:[B
    const/4 v0, 0x0

    .line 52
    .local v0, read:I
    const/4 v2, 0x0

    .line 53
    .local v2, total:I
    :goto_6
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_13

    .line 54
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    add-int/2addr v2, v0

    goto :goto_6

    .line 57
    :cond_13
    return v2
.end method

.method public static getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urlimage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 122
    if-eqz p0, :cond_1a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static loadBitmapFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"
    .parameter "stream"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->prepareResources(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static loadDrawableFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter "context"
    .parameter "stream"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->loadBitmapFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static prepareResources(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 61
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_5

    .line 69
    :goto_4
    return-void

    .line 64
    :cond_5
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v0, p0

    .line 65
    check-cast v0, Landroid/app/Activity;

    .line 66
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 68
    .local v1, mgr:Landroid/content/res/AssetManager;
    new-instance v2, Landroid/content/res/Resources;

    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    goto :goto_4
.end method

.method private static setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V
    .registers 8
    .parameter "view"
    .parameter "d"
    .parameter "removeCallback"

    .prologue
    .line 353
    if-eqz p1, :cond_c

    .line 354
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "setImageDrawable()   Set the drawable"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    :cond_c
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 359
    .local v0, callback:Ljava/lang/Runnable;
    if-eqz v0, :cond_58

    .line 360
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageDrawable()   Found a callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 362
    :try_start_32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 363
    if-eqz p2, :cond_58

    .line 364
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageDrawable()   Removing the callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 365
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_58} :catch_59

    .line 371
    :cond_58
    :goto_58
    return-void

    .line 367
    :catch_59
    move-exception v1

    .line 368
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "setImageDrawable()   : "

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V
    .registers 13
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultBItmapID"
    .parameter "cacheDurationMs"

    .prologue
    .line 110
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLjava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLjava/lang/Runnable;)V
    .registers 14
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultBItmapID"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p3, :cond_d

    .line 116
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .end local v3           #d:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    .restart local v3       #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_d
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V
    .registers 27
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 158
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() START"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 159
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->cleanup(Landroid/content/Context;)V

    .line 160
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->prepareResources(Landroid/content/Context;)V

    .line 162
    if-eqz p1, :cond_21

    .line 164
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    if-eqz p6, :cond_21

    .line 166
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingCallbacks:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_21
    invoke-static/range {p2 .. p2}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 171
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() url was null"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 172
    if-eqz p1, :cond_38

    .line 173
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 175
    :cond_38
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Returning"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 350
    :goto_3f
    return-void

    .line 179
    :cond_40
    invoke-static {}, Lcom/sprint/w/installer/util/UrlImageCache;->getInstance()Lcom/sprint/w/installer/util/UrlImageCache;

    move-result-object v7

    .line 180
    .local v7, cache:Lcom/sprint/w/installer/util/UrlImageCache;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/sprint/w/installer/util/UrlImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 181
    .local v9, bmp:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_7f

    .line 182
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v11, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 183
    .local v11, d:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUrlDrawable() - Cache hit on: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 185
    if-eqz p1, :cond_77

    .line 186
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 188
    :cond_77
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Returning"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_3f

    .line 192
    .end local v11           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_7f
    invoke-static/range {p2 .. p2}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 195
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15c

    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15c

    .line 196
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUrlDrawable() Found file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUrlDrawable() File size : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 199
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p4, v3

    if-eqz v3, :cond_e4

    :try_start_d6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    add-long v16, v16, p4

    cmp-long v3, v3, v16

    if-gez v3, :cond_1bc

    .line 200
    :cond_e4
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File Cache hit on: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms old."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v15

    .line 202
    .local v15, fis:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->loadDrawableFromStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v12

    .line 203
    .local v12, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 204
    if-eqz p1, :cond_131

    .line 205
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 207
    :cond_131
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v3}, Lcom/sprint/w/installer/util/UrlImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Returning"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_141} :catch_143

    goto/16 :goto_3f

    .line 213
    .end local v12           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v15           #fis:Ljava/io/FileInputStream;
    :catch_143
    move-exception v13

    .line 214
    .local v13, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get drawable for:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 219
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_15c
    :goto_15c
    if-eqz p1, :cond_16d

    .line 220
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Setting default drawable during download"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 221
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 228
    :cond_16d
    if-eqz p1, :cond_17f

    .line 229
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Added the ImageView to the PendingViews"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 230
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_17f
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 234
    .local v10, currentDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz v10, :cond_1c4

    .line 235
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUrlDrawable() Found a Pending Download for the url: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 241
    if-eqz p1, :cond_1b3

    .line 242
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Added ImageView to Pending Downloads"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1b3
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "setUrlDrawable() Returning"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 211
    .end local v10           #currentDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :cond_1bc
    :try_start_1bc
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "File cache has expired. Refreshing."

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c3} :catch_143

    goto :goto_15c

    .line 249
    .restart local v10       #currentDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :cond_1c4
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUrlDrawable() No pending download for url: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v8, downloads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz p1, :cond_1ea

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1ea
    sget-object v3, Lcom/sprint/w/installer/util/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v2, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/sprint/w/installer/util/UrlImageViewHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/sprint/w/installer/util/UrlImageCache;Ljava/util/ArrayList;)V

    .line 349
    .local v2, downloader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3f
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 9
    .parameter "imageView"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 9
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultBItmapID"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    .line 91
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 11
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultBItmapID"
    .parameter "callback"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLjava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v3, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-wide/32 v4, 0x5265c00

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .registers 11
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "callback"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v3, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-wide/32 v4, 0x5265c00

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;J)V
    .registers 12
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "cacheDurationMs"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 10
    .parameter "imageView"
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/32 v4, 0x5265c00

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;JLjava/lang/Runnable;)V

    .line 87
    return-void
.end method
