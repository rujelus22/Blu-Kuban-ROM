.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field static final DEBUG:Z = true

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final DROID_SANS_MONO_PATH:Ljava/lang/String; = "/system/fonts/DroidSansMono.ttf"

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_MONOSPACE:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_SERIF:Landroid/graphics/Typeface; = null

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field public static final FlipFontAppList:[Ljava/lang/String; = null

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static FlipFontPathMonospace:Ljava/lang/String; = null

.field private static FlipFontPathSerif:Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field private static final LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/"

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field private static final MONOSPACE_INDEX:I = 0x3

.field private static final MONOSPACE_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/monospace.loc"

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final SERIF_INDEX:I = 0x2

.field private static final SERIF_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/serif.loc"

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field static sDefaults:[Landroid/graphics/Typeface;


# instance fields
.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 57
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 61
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_SERIF:Landroid/graphics/Typeface;

    .line 97
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.apps.tag"

    aput-object v2, v0, v5

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v6

    const-string v2, "com.android.calculator2"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com.android.camera"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.android.certinstaller"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.android.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.android.deskclock"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "com.android.development"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "com.android.email"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "com.android.inputmethod.latin"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "com.android.inputmethod.pinyin"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "com.android.launcher"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "com.android.launcher2"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "com.android.mms"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "com.android.music"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "com.android.musicvis"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "com.android.nfc3"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "com.android.packageinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "com.android.phone"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "com.android.protips"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "com.android.providers.applications"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "com.android.providers.calendar"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "com.android.providers.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "com.android.providers.downloads"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "com.android.providers.downloads.ui"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "com.android.providers.drm"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "com.android.providers.media"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "com.android.providers.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "com.android.providers.subscribedfeeds"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "com.android.providers.telephony"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "com.android.providers.userdictionary"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "com.android.provision"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "com.android.quicksearchbox"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "com.android.server.vpn"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "com.android.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "com.android.smspush"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "com.android.soundrecorder"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "com.android.spare_parts"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "com.android.systemui"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "com.android.voicedialer"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "com.android.wallpaper"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "com.android.wallpaper.livepicker"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "com.cooliris.media"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "jp.co.omronsoft.openwnn"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "com.monotype.test"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    move-object v0, v1

    .line 438
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 439
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 440
    const-string v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 441
    const-string v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 442
    const-string v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 444
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 450
    return-void
.end method

.method private constructor <init>(I)V
    .registers 4
    .parameter "ni"

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    if-nez p1, :cond_d

    .line 432
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_d
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 435
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 6
    .parameter "family"
    .parameter "style"

    .prologue
    .line 381
    const-string v1, "Monotype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typeface->create() family = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "style = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, ni:I
    if-eqz p0, :cond_27

    .line 384
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 386
    :cond_27
    new-instance v1, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 5
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 365
    const-string v0, "Monotype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typeface->create() familyName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 406
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 3
    .parameter "path"

    .prologue
    .line 416
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3
    .parameter "path"

    .prologue
    .line 426
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 4
    .parameter "style"

    .prologue
    .line 395
    const-string v0, "Monotype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typeface->defaultFromStyle() style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getFontPathFlipFont(I)Ljava/lang/String;
    .registers 13
    .parameter "typefaceIndex"

    .prologue
    .line 213
    const-string v9, "Monotype"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t\tTypeface getFontPathFlipFont - typefaceIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    packed-switch p0, :pswitch_data_9a

    .line 226
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v5, file:Ljava/io/File;
    :goto_22
    const/4 v6, 0x0

    .line 232
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 233
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 234
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 237
    .local v8, string:Ljava/lang/String;
    :try_start_26
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_76
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_7a

    .line 239
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_2b
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_81

    .line 240
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_30
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_35} :catch_90
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_84

    .line 241
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_35
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 245
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 246
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_42} :catch_94
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_88

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 253
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_45
    const-string v9, "Monotype"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t\tTypeface getFontPathFlipFont - fontPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v8

    .line 217
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #string:Ljava/lang/String;
    :pswitch_5e
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v5       #file:Ljava/io/File;
    goto :goto_22

    .line 220
    .end local v5           #file:Ljava/io/File;
    :pswitch_66
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/serif.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v5       #file:Ljava/io/File;
    goto :goto_22

    .line 223
    .end local v5           #file:Ljava/io/File;
    :pswitch_6e
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/monospace.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v5       #file:Ljava/io/File;
    goto :goto_22

    .line 247
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #string:Ljava/lang/String;
    :catch_76
    move-exception v4

    .line 248
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_77
    const-string v8, ""

    .line 252
    goto :goto_45

    .line 249
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_7a
    move-exception v4

    .line 250
    .local v4, e:Ljava/io/IOException;
    :goto_7b
    const-string v8, ""

    .line 251
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 249
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_81
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_7b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_84
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_7b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_88
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_7b

    .line 247
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_8d
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_77

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_90
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_77

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_94
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_77

    .line 215
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_66
        :pswitch_6e
    .end packed-switch
.end method

.method public static getTypefaceFlipFont(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .registers 10
    .parameter "appNameString"
    .parameter "typefaceIndex"
    .parameter "style"

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, tf:Landroid/graphics/Typeface;
    const-string v4, "Monotype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\tTypeface getTypefaceFlipFont(String str, int style) str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  style = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    .line 163
    .local v0, bInList:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    sget-object v4, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4d

    .line 165
    sget-object v4, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 167
    const/4 v0, 0x1

    .line 168
    const-string v4, "Monotype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\tApp in flipfont list - app name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4d
    if-eqz v0, :cond_59

    .line 175
    packed-switch p1, :pswitch_data_96

    .line 204
    const-string v4, "Monotype"

    const-string v5, "\t\tTypeFace index unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    :pswitch_59
    move-object v4, v3

    .line 208
    :goto_5a
    return-object v4

    .line 163
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 177
    :pswitch_5e
    invoke-static {}, Landroid/graphics/Typeface;->setTypefaceFlipFont()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 179
    const/4 v4, 0x0

    goto :goto_5a

    .line 180
    :cond_6a
    packed-switch p2, :pswitch_data_a0

    goto :goto_59

    .line 182
    :pswitch_6e
    const-string v4, "Monotype"

    const-string v5, "\t\tFlipFont NORMAL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 184
    goto :goto_59

    .line 186
    :pswitch_78
    const-string v4, "Monotype"

    const-string v5, "\t\tFlipFont BOLD"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 188
    goto :goto_59

    .line 190
    :pswitch_82
    const-string v4, "Monotype"

    const-string v5, "\t\tFlipFont ITALIC"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 192
    goto :goto_59

    .line 194
    :pswitch_8c
    const-string v4, "Monotype"

    const-string v5, "\t\tFlipFont ITALIC BOLD"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_59

    .line 175
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_59
        :pswitch_59
    .end packed-switch

    .line 180
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_78
        :pswitch_82
        :pswitch_8c
    .end packed-switch
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method

.method private static setTypefaceFlipFont()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 292
    const-string v2, ""

    .line 293
    .local v2, strFontPathBold:Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, strFontPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 297
    :cond_17
    const-string v3, "Monotype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Typeface->setTypefaceFlipFont Font Path = none.  path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/fonts/UIFont.ttf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 300
    const-string v1, "/system/fonts/UIFont.ttf"

    .line 301
    const-string v2, "/system/fonts/UIBoldFont.ttf"

    .line 315
    .end local v0           #f:Ljava/io/File;
    :goto_40
    sget-object v3, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 317
    :cond_4e
    const-string v3, "Monotype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Typeface->setTypefaceFlipFont path has not changed.  path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_66
    return-object v1

    .line 304
    .restart local v0       #f:Ljava/io/File;
    :cond_67
    const-string v1, ""

    .line 305
    const-string v2, ""

    goto :goto_40

    .line 309
    .end local v0           #f:Ljava/io/File;
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans-Bold.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DroidSans.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    .line 321
    :cond_9f
    const-string v3, "Monotype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Typeface->setTypefaceFlipFont createFromFile.  path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "Monotype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Typeface->setTypefaceFlipFont createFromFile.  path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 324
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 325
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 326
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 327
    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 329
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v5, v3, v4

    .line 330
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v4, v3, v6

    .line 331
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v4, v3, v7

    .line 332
    sget-object v3, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v4, v3, v8

    .line 334
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    goto/16 :goto_66
.end method

.method private static setTypefaceFlipFontMonospace()Ljava/lang/String;
    .registers 4

    .prologue
    .line 273
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, strFontPath:Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_38

    .line 276
    :cond_13
    const-string v0, "/system/fonts/DroidSansMono.ttf"

    .line 280
    :goto_15
    const-string v0, "/sdcard/fonts/monospace.ttf"

    .line 281
    sget-object v1, Landroid/graphics/Typeface;->FlipFontPathMonospace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 283
    const-string v1, "Monotype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typeface->setTypefaceFlipFontMonospace path has not changed.  path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_37
    return-object v0

    .line 278
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DroidSansMono.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 286
    :cond_4c
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_MONOSPACE:Landroid/graphics/Typeface;

    .line 287
    sput-object v0, Landroid/graphics/Typeface;->FlipFontPathMonospace:Ljava/lang/String;

    goto :goto_37
.end method

.method private static setTypefaceFlipFontSerif()Ljava/lang/String;
    .registers 4

    .prologue
    .line 258
    const-string v1, "Monotype"

    const-string v2, "\t\tTypeface setTypefaceFlipFontSerif"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, strFontPath:Ljava/lang/String;
    const-string v0, "/sdcard/fonts/serif.ttf"

    .line 262
    sget-object v1, Landroid/graphics/Typeface;->FlipFontPathSerif:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 264
    const-string v1, "Monotype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typeface->setTypefaceFlipFontSerif path has not changed.  path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_2e
    return-object v0

    .line 267
    :cond_2f
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_SERIF:Landroid/graphics/Typeface;

    .line 268
    sput-object v0, Landroid/graphics/Typeface;->FlipFontPathSerif:Ljava/lang/String;

    goto :goto_2e
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 453
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 454
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 455
    return-void
.end method

.method public getStyle()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    return v0
.end method

.method public final isBold()Z
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isItalic()Z
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
