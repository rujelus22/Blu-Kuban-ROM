.class public Lcom/swype/android/widget/KeyboardBitmapManager;
.super Ljava/lang/Object;
.source "KeyboardBitmapManager.java"


# static fields
.field private static final FILE_EXTS:[Ljava/lang/String; = null

.field private static final KEYBOARD_ASSET_DIR:Ljava/lang/String; = "keyboards"

.field private static final LOG_TAG:Ljava/lang/String; = "KeyboardBitmapManager"

.field private static final NINEPATCH_EXTENSION:Ljava/lang/String; = "_9patch.png"

.field private static final PNG_EXTENSION:Ljava/lang/String; = ".png"

.field public static final WING_LEFT:Ljava/lang/String; = "Left"

.field public static final WING_RIGHT:Ljava/lang/String; = "Right"

.field public static final WING_TYPE_HANDLE:Ljava/lang/String; = "Move"

.field public static final WING_TYPE_HANDLE_HIGHLIGHT:Ljava/lang/String; = "MoveHL"

.field public static final WING_TYPE_STANDARD:Ljava/lang/String; = "Standard"

.field private static final drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keyboard:Landroid/graphics/drawable/Drawable;

.field private static keyboardName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_9patch.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->FILE_EXTS:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->fileNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCache()V
    .registers 4

    .prologue
    .line 173
    const-class v2, Lcom/swype/android/widget/KeyboardBitmapManager;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/swype/android/widget/KeyboardBitmapManager;->recycleKeyboard()V

    .line 174
    sget-object v3, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 175
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    .line 176
    invoke-static {v0}, Lcom/swype/android/widget/KeyboardBitmapManager;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_22

    goto :goto_10

    .line 173
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v3

    monitor-exit v2

    throw v3

    .line 179
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    sget-object v3, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 180
    monitor-exit v2

    return-void
.end method

.method public static getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"
    .parameter "name"
    .parameter "optional"

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 91
    const-class v3, Lcom/swype/android/widget/KeyboardBitmapManager;

    monitor-enter v3

    :try_start_4
    sget-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 93
    if-eqz v1, :cond_26

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_26

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 95
    sget-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    .line 100
    :cond_26
    if-eqz p3, :cond_32

    if-nez v1, :cond_64

    sget-object v2, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 101
    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_90

    move-result-object v2

    .line 103
    :try_start_36
    invoke-static {p1, v2}, Lcom/swype/android/widget/KeyboardBitmapManager;->getFileName(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_5d

    .line 105
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    const/16 v6, 0xa0

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 113
    const-string v6, "_9patch.png"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 114
    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 119
    :goto_50
    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_90
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_53} :catch_6b

    move-result-object v2

    .line 125
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_56
    invoke-static {v4, v6, v2, p1, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_8b

    move-result-object v1

    .line 127
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_90
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6b

    .line 135
    :cond_5d
    :goto_5d
    if-eqz p3, :cond_64

    .line 137
    :try_start_5f
    sget-object v2, Lcom/swype/android/widget/KeyboardBitmapManager;->drawableCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_90

    .line 140
    :cond_64
    monitor-exit v3

    return-object v1

    .line 116
    :cond_66
    const/16 v6, 0xa0

    :try_start_68
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_90
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6a} :catch_6b

    goto :goto_50

    .line 130
    :catch_6b
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 131
    if-nez p2, :cond_89

    .line 132
    :try_start_71
    const-string v4, "KeyboardBitmapManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed loading drawable by name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_90

    :cond_89
    move-object v1, v2

    goto :goto_5d

    .line 127
    :catchall_8b
    move-exception v4

    :try_start_8c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_6b

    .line 91
    :catchall_90
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private static getFileName(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 209
    sget-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->fileNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 210
    const-string v0, "keyboards"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v9

    :goto_11
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 212
    sget-object v4, Lcom/swype/android/widget/KeyboardBitmapManager;->FILE_EXTS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v9

    :goto_19
    if-ge v6, v5, :cond_35

    aget-object v7, v4, v6

    .line 213
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 215
    sget-object v5, Lcom/swype/android/widget/KeyboardBitmapManager;->fileNames:Ljava/util/Map;

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 212
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 222
    :cond_3b
    sget-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->fileNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 223
    if-eqz p0, :cond_51

    .line 224
    new-instance v0, Ljava/io/File;

    const-string v1, "keyboards"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_50
    return-object v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public static declared-synchronized getKeyboard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 231
    const-class v0, Lcom/swype/android/widget/KeyboardBitmapManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboardName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    .line 232
    :cond_f
    invoke-static {}, Lcom/swype/android/widget/KeyboardBitmapManager;->recycleKeyboard()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    .line 234
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_14
    invoke-static {p0, p1, v1, v2}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_1a} :catch_20

    .line 240
    :goto_1a
    :try_start_1a
    sput-object p1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboardName:Ljava/lang/String;

    .line 242
    :cond_1c
    sget-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2d

    monitor-exit v0

    return-object v1

    .line 237
    :catch_20
    move-exception v1

    :try_start_21
    invoke-static {}, Lcom/swype/android/widget/KeyboardBitmapManager;->clearCache()V

    .line 238
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2d

    goto :goto_1a

    .line 231
    :catchall_2d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPrefixForDisplay(I)Ljava/lang/String;
    .registers 3
    .parameter "display_no"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    if-eqz p0, :cond_19

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/swype/android/widget/KeyboardBitmapManager;->getPrefixForDisplay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wing_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_75

    const-string v1, "PT"

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "Standard"

    if-eq p4, v1, :cond_5d

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0

    .line 164
    :cond_75
    const-string v1, "LS"

    goto :goto_3a
.end method

.method private static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 191
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_d

    .line 192
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_d
    return-void
.end method

.method private static recycleKeyboard()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 183
    sget-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 184
    sget-object v0, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/swype/android/widget/KeyboardBitmapManager;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sput-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboard:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_c
    sput-object v1, Lcom/swype/android/widget/KeyboardBitmapManager;->keyboardName:Ljava/lang/String;

    .line 188
    return-void
.end method
