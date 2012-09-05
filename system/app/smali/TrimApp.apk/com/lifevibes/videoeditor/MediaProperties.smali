.class public Lcom/lifevibes/videoeditor/MediaProperties;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# static fields
.field private static final ASPECT_RATIOS:[I

.field private static final ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_ACODECS:[I

.field private static final SUPPORTED_BITRATES:[I

.field private static final SUPPORTED_VCODECS:[I

.field private static final SUPPORTED_VCODEC_PROFILE_LEVELS:[I

.field private static final SUPPORTED_VIDEO_FILE_FORMATS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x1e0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_150

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIOS:[I

    .line 91
    new-array v0, v7, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x2d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 108
    new-array v0, v6, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 114
    new-array v0, v7, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x168

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x356

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x438

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 149
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_15e

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->SUPPORTED_BITRATES:[I

    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_17c

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->SUPPORTED_VCODECS:[I

    .line 259
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_18a

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->SUPPORTED_VCODEC_PROFILE_LEVELS:[I

    .line 340
    new-array v0, v8, [I

    fill-array-data v0, :array_208

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->SUPPORTED_ACODECS:[I

    .line 386
    new-array v0, v8, [I

    fill-array-data v0, :array_212

    sput-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->SUPPORTED_VIDEO_FILE_FORMATS:[I

    return-void

    .line 79
    :array_150
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 149
    :array_15e
    .array-data 0x4
        0x60t 0x6dt 0x0t 0x0t
        0x40t 0x9ct 0x0t 0x0t
        0x0t 0xfat 0x0t 0x0t
        0x0t 0x77t 0x1t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x0t 0xeet 0x2t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xd0t 0x7t 0x0t
        0x0t 0x35t 0xct 0x0t
        0x80t 0x84t 0x1et 0x0t
        0x40t 0x4bt 0x4ct 0x0t
        0x0t 0x12t 0x7at 0x0t
    .end array-data

    .line 178
    :array_17c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 259
    :array_18a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0xbdt 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 340
    :array_208
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 386
    :array_212
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method public static getSupportedResolutions(I)[Landroid/util/Pair;
    .registers 5
    .parameter "aspectRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    packed-switch p0, :pswitch_data_2c

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown aspect ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :pswitch_1c
    sget-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    .line 455
    .local v0, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1e
    return-object v0

    .line 431
    .end local v0           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_1f
    sget-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 432
    .restart local v0       #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1e

    .line 436
    .end local v0           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_22
    sget-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 437
    .restart local v0       #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1e

    .line 441
    .end local v0           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_25
    sget-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 442
    .restart local v0       #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1e

    .line 446
    .end local v0           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_28
    sget-object v0, Lcom/lifevibes/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 447
    .restart local v0       #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1e

    .line 424
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_28
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method
