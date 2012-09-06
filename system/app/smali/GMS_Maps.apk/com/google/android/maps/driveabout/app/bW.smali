.class public Lcom/google/android/maps/driveabout/app/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[Landroid/graphics/Bitmap;

.field private final b:Landroid/content/Context;

.field private final c:Lac/p;

.field private d:Lcom/google/android/maps/driveabout/app/bz;

.field private final e:Lcom/google/android/maps/driveabout/app/bC;

.field private final f:Lcom/google/android/maps/driveabout/app/bC;

.field private final g:Lcom/google/android/maps/driveabout/app/bC;

.field private final h:Lcom/google/android/maps/driveabout/app/bC;

.field private final i:Ljava/util/LinkedList;

.field private j:I

.field private k:Ln/aL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lac/p;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bw;->j:I

    .line 471
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    .line 472
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bw;->c:Lac/p;

    .line 473
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bw;->h()Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->e:Lcom/google/android/maps/driveabout/app/bC;

    .line 474
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->o()Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    .line 475
    new-instance v0, Lcom/google/android/maps/driveabout/app/bC;

    const-string v1, "__RECENTS"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    .line 477
    new-instance v0, Lcom/google/android/maps/driveabout/app/bC;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    .line 478
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->e:Lcom/google/android/maps/driveabout/app/bC;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 479
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 482
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    .line 484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 485
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const v3, 0x7f02012b

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f020126

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f02012e

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->a:[Landroid/graphics/Bitmap;

    .line 490
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->n()V

    .line 491
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->p()V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bw;->a()V

    .line 494
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 4
    .parameter

    .prologue
    .line 1155
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "layerDisplayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isActive"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isSearch"

    aput-object v2, v0, v1

    .line 1161
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1162
    const-string v0, "DATA_PROTO_SAVED_LAYER_STATE"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 1163
    const-string v0, "DATA_PROTO_SAVED_RECENT_LAYERS"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 1164
    return-object v1
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1214
    const/4 v1, 0x0

    .line 1216
    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8b

    move-result v2

    if-eqz v2, :cond_f

    .line 1254
    if-eqz v0, :cond_e

    .line 1256
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_a1

    .line 1257
    :cond_e
    :goto_e
    return-object v0

    .line 1222
    :cond_f
    const/4 v2, 0x3

    :try_start_10
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    .line 1224
    if-eqz v2, :cond_1a

    array-length v3, v2
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_8b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_22

    .line 1254
    :cond_1a
    if-eqz v0, :cond_e

    .line 1256
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_e

    .line 1257
    :catch_20
    move-exception v1

    goto :goto_e

    .line 1227
    :cond_22
    const/4 v1, 0x0

    :try_start_23
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_LAYER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1233
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5d} :catch_8b

    .line 1234
    :try_start_5d
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1239
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1241
    if-eqz v2, :cond_83

    .line 1242
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1244
    if-eqz v2, :cond_83

    .line 1245
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7a} :catch_a8

    move-result-object v0

    .line 1254
    if-eqz v1, :cond_e

    .line 1256
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_e

    .line 1257
    :catch_81
    move-exception v1

    goto :goto_e

    .line 1254
    :cond_83
    if-eqz v1, :cond_e

    .line 1256
    :try_start_85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_e

    .line 1257
    :catch_89
    move-exception v1

    goto :goto_e

    .line 1250
    :catch_8b
    move-exception v1

    move-object v1, v0

    .line 1254
    :goto_8d
    if-eqz v1, :cond_e

    .line 1256
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_e

    .line 1257
    :catch_94
    move-exception v1

    goto/16 :goto_e

    .line 1254
    :catchall_97
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_9b
    if-eqz v1, :cond_a0

    .line 1256
    :try_start_9d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a4

    .line 1257
    :cond_a0
    :goto_a0
    throw v0

    :catch_a1
    move-exception v1

    goto/16 :goto_e

    :catch_a4
    move-exception v1

    goto :goto_a0

    .line 1254
    :catchall_a6
    move-exception v0

    goto :goto_9b

    .line 1250
    :catch_a8
    move-exception v2

    goto :goto_8d
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bw;)Ln/aL;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->k:Ln/aL;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1169
    const/4 v2, 0x0

    .line 1172
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/16 v5, 0x1000

    invoke-direct {v1, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_65

    .line 1173
    :try_start_e
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1175
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1178
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    move v2, v4

    .line 1179
    :goto_23
    if-ge v2, v6, :cond_5f

    .line 1180
    const/4 v0, 0x1

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1182
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v7

    .line 1183
    if-eqz v7, :cond_59

    .line 1184
    const/4 v8, 0x5

    invoke-static {v0, v8}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    .line 1187
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-int v10, v6, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v7, 0x2

    if-eqz v0, :cond_5d

    move v0, v3

    :goto_48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v7

    const/4 v0, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v0

    invoke-virtual {p2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_95

    .line 1179
    :cond_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_5d
    move v0, v4

    .line 1187
    goto :goto_48

    .line 1199
    :cond_5f
    if-eqz v1, :cond_64

    .line 1201
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_8f

    .line 1205
    :cond_64
    :goto_64
    return-void

    .line 1195
    :catch_65
    move-exception v0

    move-object v1, v2

    .line 1197
    :goto_67
    :try_start_67
    const-string v2, "LayerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating cursor from GMM Layer File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_93

    .line 1199
    if-eqz v1, :cond_64

    .line 1201
    :try_start_81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_64

    .line 1202
    :catch_85
    move-exception v0

    goto :goto_64

    .line 1199
    :catchall_87
    move-exception v0

    move-object v1, v2

    :goto_89
    if-eqz v1, :cond_8e

    .line 1201
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    .line 1202
    :cond_8e
    :goto_8e
    throw v0

    :catch_8f
    move-exception v0

    goto :goto_64

    :catch_91
    move-exception v1

    goto :goto_8e

    .line 1199
    :catchall_93
    move-exception v0

    goto :goto_89

    .line 1195
    :catch_95
    move-exception v0

    goto :goto_67
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bw;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bC;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/by;

    if-eqz v1, :cond_17

    .line 1103
    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1105
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->c(Lcom/google/android/maps/driveabout/app/by;)V

    .line 1108
    :cond_17
    return-void
.end method

.method private a(Z)V
    .registers 15
    .parameter

    .prologue
    .line 1037
    const/4 v1, 0x0

    .line 1039
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_2} :catch_2e

    .line 1040
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;)V

    .line 1044
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 1045
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1046
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    goto :goto_d

    .line 1084
    :catchall_2b
    move-exception v0

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 1085
    :catch_2e
    move-exception v0

    .line 1086
    :try_start_2f
    const-string v2, "SQLiteException reading from recent layers"

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_a8

    .line 1088
    if-eqz v1, :cond_39

    .line 1090
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_39} :catch_af

    .line 1094
    :cond_39
    :goto_39
    return-void

    .line 1050
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bw;->j()Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_2b

    move-result-object v9

    .line 1051
    if-nez v9, :cond_49

    .line 1052
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_b3

    .line 1088
    if-eqz v9, :cond_39

    .line 1090
    :try_start_43
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_39

    .line 1091
    :catch_47
    move-exception v0

    goto :goto_39

    .line 1055
    :cond_49
    :try_start_49
    const-string v0, "layerDisplayName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1056
    const-string v0, "isActive"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1057
    if-ltz v10, :cond_59

    if-gez v11, :cond_62

    .line 1058
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_b3

    .line 1088
    if-eqz v9, :cond_39

    .line 1090
    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_39

    .line 1091
    :catch_60
    move-exception v0

    goto :goto_39

    .line 1062
    :cond_62
    :try_start_62
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1065
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1066
    if-eqz v2, :cond_8a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bC;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 1069
    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    new-instance v0, Lcom/google/android/maps/driveabout/app/by;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f020123

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/by;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    invoke-static {v12, v0}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 1077
    :cond_8a
    if-eqz p1, :cond_95

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_95

    .line 1078
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bw;->a(Ljava/lang/String;)V

    .line 1080
    :cond_95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bC;->j()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_62

    .line 1084
    :cond_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_62 .. :try_end_a0} :catchall_b3

    .line 1088
    if-eqz v9, :cond_39

    .line 1090
    :try_start_a2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_39

    .line 1091
    :catch_a6
    move-exception v0

    goto :goto_39

    .line 1088
    :catchall_a8
    move-exception v0

    if-eqz v1, :cond_ae

    .line 1090
    :try_start_ab
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_ae} :catch_b1

    .line 1091
    :cond_ae
    :goto_ae
    throw v0

    :catch_af
    move-exception v0

    goto :goto_39

    :catch_b1
    move-exception v1

    goto :goto_ae

    .line 1084
    :catchall_b3
    move-exception v0

    move-object v1, v9

    goto/16 :goto_2c
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x0

    .line 897
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v1, v0

    .line 899
    :goto_7
    if-ge v1, v2, :cond_17

    .line 900
    invoke-virtual {p1, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 902
    const/4 v0, 0x1

    .line 899
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 905
    :cond_17
    if-eqz v0, :cond_1c

    .line 906
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    .line 908
    :cond_1c
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/bw;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized c(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 6
    .parameter

    .prologue
    .line 561
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bw;->d(Lcom/google/android/maps/driveabout/app/by;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bw;->j:I

    if-lt v0, v1, :cond_2f

    .line 564
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 565
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v2

    if-nez v2, :cond_14

    .line 566
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->d(Lcom/google/android/maps/driveabout/app/by;)V

    .line 573
    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->f()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->e()Z

    move-result v0

    if-nez v0, :cond_45

    .line 574
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->c:Lac/p;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bD;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/bD;-><init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/by;)V

    invoke-interface {v0, v1}, Lac/p;->c(Lac/g;)V

    .line 576
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/by;->d()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 577
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Landroid/graphics/Bitmap;)V

    .line 580
    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 581
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Z)Z
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 582
    monitor-exit p0

    return-void

    .line 561
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 3
    .parameter

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 613
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Z)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 614
    monitor-exit p0

    return-void

    .line 612
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 589
    monitor-enter p0

    move v2, v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->a:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v2, v0, :cond_38

    .line 591
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 592
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->d()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/by;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bw;->a:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    if-ne v0, v4, :cond_e

    .line 594
    const/4 v0, 0x1

    .line 598
    :goto_2c
    if-nez v0, :cond_34

    .line 599
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3a

    .line 602
    :goto_32
    monitor-exit p0

    return-object v0

    .line 589
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 602
    :cond_38
    const/4 v0, 0x0

    goto :goto_32

    .line 589
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3d
    move v0, v1

    goto :goto_2c
.end method

.method private declared-synchronized l()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 624
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 626
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 627
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 630
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 631
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Z)Z

    .line 632
    const/4 v0, 0x1

    :goto_2d
    move v1, v0

    .line 634
    goto :goto_10

    .line 635
    :cond_2f
    if-eqz v1, :cond_39

    .line 636
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 637
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->n()V
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    .line 641
    :cond_39
    monitor-exit p0

    return v1

    .line 624
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    move v0, v1

    goto :goto_2d
.end method

.method private m()V
    .registers 5

    .prologue
    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 651
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 652
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_28

    .line 653
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 663
    :cond_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const-string v2, "ActiveDefaultLayers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 679
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bC;->j()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bC;->d(I)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 681
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 682
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->c(Lcom/google/android/maps/driveabout/app/by;)V

    .line 679
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 685
    :cond_1f
    return-void
.end method

.method private o()Lcom/google/android/maps/driveabout/app/bC;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 818
    new-instance v9, Lcom/google/android/maps/driveabout/app/bC;

    const-string v0, "__SYSTEM_LAYERS"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V

    .line 822
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 823
    new-instance v0, Lcom/google/android/maps/driveabout/app/by;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const-string v2, "TrafficIncident"

    const v6, 0x7f020122

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/by;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    .line 825
    invoke-static {v9, v0}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 827
    return-object v9
.end method

.method private p()V
    .registers 5

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const-string v1, "ActiveDefaultLayers"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lt/q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 861
    array-length v2, v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 862
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/app/bw;->a(Ljava/lang/String;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 864
    :cond_1c
    return-void
.end method

.method private q()V
    .registers 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->d:Lcom/google/android/maps/driveabout/app/bz;

    if-eqz v0, :cond_9

    .line 1265
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->d:Lcom/google/android/maps/driveabout/app/bz;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/bz;->a(Lcom/google/android/maps/driveabout/app/bw;)V

    .line 1267
    :cond_9
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 502
    new-instance v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Lcom/google/android/maps/driveabout/app/bw;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->start()V

    .line 508
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x4100

    .line 836
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->g:Lcom/google/android/maps/driveabout/app/bC;

    const-string v1, "TrafficIncident"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 838
    const/4 v1, 0x2

    if-ne p1, v1, :cond_13

    .line 839
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->b(Lcom/google/android/maps/driveabout/app/by;)V

    .line 852
    :goto_12
    return-void

    .line 841
    :cond_13
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 842
    const/high16 v1, 0x41f0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/by;->a(FF)V

    .line 850
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/by;)V

    goto :goto_12

    .line 846
    :cond_1f
    const/high16 v1, 0x4170

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/by;->a(FF)V

    goto :goto_1b
.end method

.method public a(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bw;->c(Lcom/google/android/maps/driveabout/app/by;)V

    .line 556
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->m()V

    .line 557
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    .line 558
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bz;)V
    .registers 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bw;->d:Lcom/google/android/maps/driveabout/app/bz;

    .line 516
    return-void
.end method

.method public a(Ln/aL;)V
    .registers 2
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bw;->k:Ln/aL;

    .line 524
    return-void
.end method

.method declared-synchronized a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 874
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 875
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->h:Lcom/google/android/maps/driveabout/app/bC;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object v0

    .line 876
    instance-of v3, v0, Lcom/google/android/maps/driveabout/app/by;

    if-eqz v3, :cond_19

    .line 877
    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3c

    move v0, v1

    .line 888
    :goto_17
    monitor-exit p0

    return v0

    .line 882
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 883
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 884
    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3c

    move v0, v1

    .line 885
    goto :goto_17

    .line 888
    :cond_3a
    const/4 v0, 0x0

    goto :goto_17

    .line 874
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/google/android/maps/driveabout/app/bC;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->e:Lcom/google/android/maps/driveabout/app/bC;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bw;->d(Lcom/google/android/maps/driveabout/app/by;)V

    .line 607
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->m()V

    .line 608
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    .line 609
    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/app/bC;
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Z)V

    .line 539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->f:Lcom/google/android/maps/driveabout/app/bC;

    return-object v0
.end method

.method public declared-synchronized d()[Lcom/google/android/maps/driveabout/app/by;
    .registers 3

    .prologue
    .line 546
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/by;

    .line 547
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/by;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 546
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 618
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    .line 619
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->m()V

    .line 621
    :cond_c
    return-void
.end method

.method public declared-synchronized g()V
    .registers 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->l()Z

    .line 673
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Z)V

    .line 674
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->q()V

    .line 675
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bw;->m()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 676
    monitor-exit p0

    return-void

    .line 672
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method h()Lcom/google/android/maps/driveabout/app/bC;
    .registers 16

    .prologue
    .line 732
    new-instance v10, Lcom/google/android/maps/driveabout/app/bC;

    const-string v0, "__DEFAULT"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V

    .line 739
    const/4 v0, 0x4

    new-array v11, v0, [Lcom/google/android/maps/driveabout/app/bA;

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0083

    const v2, 0x7f0d0083

    const v3, 0x7f02011e

    const v4, 0x7f02012a

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    const/4 v6, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0085

    const v2, 0x7f0d0085

    const v3, 0x7f02011d

    const v4, 0x7f020129

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    const/4 v6, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0088

    const v2, 0x7f0d008a

    const v3, 0x7f020119

    const v4, 0x7f020124

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    const/4 v6, 0x3

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0086

    const v2, 0x7f0d0086

    const v3, 0x7f020120

    const v4, 0x7f02012c

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    .line 762
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 763
    const/4 v6, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0089

    const v2, 0x7f0d0089

    const v3, 0x7f02011c

    const v4, 0x7f020127

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    .line 772
    :cond_94
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 773
    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bA;

    const v1, 0x7f0d0084

    const v2, 0x7f0d0084

    const v3, 0x7f02011a

    const v4, 0x7f020125

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bA;-><init>(IIII[I)V

    aput-object v0, v11, v6

    .line 778
    :cond_b7
    array-length v12, v11

    const/4 v0, 0x0

    move v9, v0

    :goto_ba
    if-ge v9, v12, :cond_ee

    aget-object v13, v11, v9

    .line 779
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    iget v1, v13, Lcom/google/android/maps/driveabout/app/bA;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    iget v1, v13, Lcom/google/android/maps/driveabout/app/bA;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 781
    const/4 v4, 0x1

    .line 782
    const/4 v5, 0x1

    .line 783
    const/4 v7, 0x0

    .line 784
    new-instance v0, Lcom/google/android/maps/driveabout/app/by;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    iget v6, v13, Lcom/google/android/maps/driveabout/app/bA;->c:I

    iget v8, v13, Lcom/google/android/maps/driveabout/app/bA;->d:I

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/by;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    .line 786
    if-eq v2, v14, :cond_e2

    .line 787
    invoke-virtual {v0, v14}, Lcom/google/android/maps/driveabout/app/by;->a(Ljava/lang/String;)V

    .line 789
    :cond_e2
    iget-object v1, v13, Lcom/google/android/maps/driveabout/app/bA;->e:[I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/by;->a([I)Lcom/google/android/maps/driveabout/app/by;

    .line 790
    invoke-static {v10, v0}, Lcom/google/android/maps/driveabout/app/bC;->a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V

    .line 778
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_ba

    .line 792
    :cond_ee
    return-object v10
.end method

.method protected i()V
    .registers 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    const-string v1, "DA_LayerInfo"

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dA;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, v1, v2}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 803
    :try_start_a
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bw;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_18

    .line 810
    :goto_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bw;->c:Lac/p;

    new-instance v2, Lcom/google/android/maps/driveabout/app/bB;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v1, v2}, Lac/p;->c(Lac/g;)V

    .line 811
    return-void

    .line 804
    :catch_18
    move-exception v0

    .line 807
    const/4 v0, 0x0

    goto :goto_d
.end method

.method j()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
