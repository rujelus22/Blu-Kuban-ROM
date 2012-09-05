.class public Lcom/google/android/maps/driveabout/app/bv;
.super Ljava/lang/Object;


# static fields
.field private static final l:Landroid/net/Uri;


# instance fields
.field final a:[Landroid/graphics/Bitmap;

.field private final b:Landroid/content/Context;

.field private final c:Lat/h;

.field private d:Lcom/google/android/maps/driveabout/app/by;

.field private final e:Lcom/google/android/maps/driveabout/app/bB;

.field private final f:Lcom/google/android/maps/driveabout/app/bB;

.field private final g:Lcom/google/android/maps/driveabout/app/bB;

.field private final h:Lcom/google/android/maps/driveabout/app/bB;

.field private final i:Ljava/util/LinkedList;

.field private j:I

.field private k:Lt/au;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.google.android.maps.LayerInfoProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/app/bv;->l:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lat/h;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bv;->j:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bv;->c:Lat/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bv;->h()Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->e:Lcom/google/android/maps/driveabout/app/bB;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->o()Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bB;

    const-string v1, "__RECENTS"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bB;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->e:Lcom/google/android/maps/driveabout/app/bB;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const v3, 0x7f020108

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f020103

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f02010b

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->a:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->n()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->p()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bv;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 4

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

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string v0, "DATA_PROTO_SAVED_LAYER_STATE"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    const-string v0, "DATA_PROTO_SAVED_RECENT_LAYERS"

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V

    return-object v1
.end method

.method private static a(Landroid/content/Context;Lam/b;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {p1, v2}, Lam/b;->d(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8b

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_20

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    const/4 v2, 0x3

    :try_start_10
    invoke-virtual {p1, v2}, Lam/b;->c(I)[B

    move-result-object v2

    if-eqz v2, :cond_1a

    array-length v3, v2
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_8b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_22

    :cond_1a
    if-eqz v0, :cond_e

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_e

    :catch_20
    move-exception v1

    goto :goto_e

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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_LAYER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5d} :catch_8b

    :try_start_5d
    sget-object v2, LbD/Z;->a:Lam/e;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_96

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_96

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7a} :catch_9f

    move-result-object v0

    if-eqz v1, :cond_e

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_20

    goto :goto_e

    :catchall_81
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_85
    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_94

    :cond_8a
    :goto_8a
    throw v0

    :catch_8b
    move-exception v1

    move-object v1, v0

    :goto_8d
    if-eqz v1, :cond_e

    :try_start_8f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_e

    :catch_94
    move-exception v1

    goto :goto_8a

    :cond_96
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9b} :catch_20

    goto/16 :goto_e

    :catchall_9d
    move-exception v0

    goto :goto_85

    :catch_9f
    move-exception v2

    goto :goto_8d
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bv;)Lt/au;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->k:Lt/au;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    const/16 v5, 0x1000

    invoke-direct {v1, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_5f

    :try_start_e
    new-instance v5, Lam/b;

    sget-object v0, LbD/Z;->o:Lam/e;

    invoke-direct {v5, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v0}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lam/b;->l(I)I

    move-result v6

    move v2, v4

    :goto_23
    if-ge v2, v6, :cond_8b

    const/4 v0, 0x1

    invoke-virtual {v5, v0, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Landroid/content/Context;Lam/b;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_59

    const/4 v8, 0x5

    invoke-static {v0, v8}, Lam/g;->h(Lam/b;I)Z

    move-result v0

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
    .catchall {:try_start_e .. :try_end_59} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_93

    :cond_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_5d
    move v0, v4

    goto :goto_48

    :catch_5f
    move-exception v0

    move-object v1, v2

    :goto_61
    :try_start_61
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

    invoke-static {v2, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_91

    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_89

    :cond_7e
    :goto_7e
    return-void

    :catchall_7f
    move-exception v0

    move-object v1, v2

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    :cond_86
    :goto_86
    throw v0

    :catch_87
    move-exception v1

    goto :goto_86

    :catch_89
    move-exception v0

    goto :goto_7e

    :cond_8b
    if-eqz v1, :cond_7e

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_89

    goto :goto_7e

    :catchall_91
    move-exception v0

    goto :goto_81

    :catch_93
    move-exception v0

    goto :goto_61
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bv;Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bv;->b(Lam/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bB;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/bx;

    if-eqz v1, :cond_17

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->c(Lcom/google/android/maps/driveabout/app/bx;)V

    :cond_17
    return-void
.end method

.method private a(Z)V
    .registers 15

    const/4 v1, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_2} :catch_2e

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    goto :goto_d

    :catchall_2b
    move-exception v0

    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    :try_start_2f
    const-string v2, "SQLiteException reading from recent layers"

    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_a4

    if-eqz v1, :cond_39

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_39} :catch_47

    :cond_39
    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bv;->j()Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_2b

    move-result-object v9

    if-nez v9, :cond_49

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_ad

    if-eqz v9, :cond_39

    :try_start_43
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_39

    :catch_47
    move-exception v0

    goto :goto_39

    :cond_49
    :try_start_49
    const-string v0, "layerDisplayName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "isActive"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-ltz v10, :cond_59

    if-gez v11, :cond_60

    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_ad

    if-eqz v9, :cond_39

    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_5f} :catch_47

    goto :goto_39

    :cond_60
    :try_start_60
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bB;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    if-nez v0, :cond_88

    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f020100

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    invoke-static {v12, v0}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    :cond_88
    if-eqz p1, :cond_93

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bv;->a(Ljava/lang/String;)V

    :cond_93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bB;->i()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_60

    :cond_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_60 .. :try_end_9e} :catchall_ad

    if-eqz v9, :cond_39

    :try_start_a0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_a3} :catch_47

    goto :goto_39

    :catchall_a4
    move-exception v0

    if-eqz v1, :cond_aa

    :try_start_a7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_aa} :catch_ab

    :cond_aa
    :goto_aa
    throw v0

    :catch_ab
    move-exception v1

    goto :goto_aa

    :catchall_ad
    move-exception v0

    move-object v1, v9

    goto/16 :goto_2c
.end method

.method private b(Lam/b;)V
    .registers 7

    const/4 v4, 0x7

    const/4 v0, 0x0

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v2

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_17

    invoke-virtual {p1, v4, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/bv;->a(Lam/b;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    :cond_1c
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/bv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/bv;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized c(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bv;->d(Lcom/google/android/maps/driveabout/app/bx;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bv;->j:I

    if-lt v0, v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v2

    if-nez v2, :cond_14

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->d(Lcom/google/android/maps/driveabout/app/bx;)V

    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->e()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->d()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->c:Lat/h;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bC;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/app/bx;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Landroid/graphics/Bitmap;)V

    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Z)Z
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-void

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Z)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Landroid/graphics/Bitmap;
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    move v2, v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->a:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v2, v0, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->c()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/bx;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bv;->a:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v2

    if-ne v0, v4, :cond_e

    const/4 v0, 0x1

    :goto_2c
    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3a

    :goto_32
    monitor-exit p0

    return-object v0

    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_38
    const/4 v0, 0x0

    goto :goto_32

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

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v3

    if-nez v3, :cond_3e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Z)Z

    const/4 v0, 0x1

    :goto_2d
    move v1, v0

    goto :goto_10

    :cond_2f
    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->n()V
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    :cond_39
    monitor-exit p0

    return v1

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

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const-string v2, "ActiveDefaultLayers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bB;->i()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bB;->d(I)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->c(Lcom/google/android/maps/driveabout/app/bx;)V

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private o()Lcom/google/android/maps/driveabout/app/bB;
    .registers 11

    const/4 v4, 0x0

    new-instance v9, Lcom/google/android/maps/driveabout/app/bB;

    const-string v0, "__SYSTEM_LAYERS"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const-string v2, "TrafficIncident"

    const v6, 0x7f0200ff

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    invoke-static {v9, v0}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    return-object v9
.end method

.method private p()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const-string v1, "ActiveDefaultLayers"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/app/bv;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    return-void
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->d:Lcom/google/android/maps/driveabout/app/by;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->d:Lcom/google/android/maps/driveabout/app/by;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/bv;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bw;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bw;-><init>(Lcom/google/android/maps/driveabout/app/bv;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->start()V

    return-void
.end method

.method public a(I)V
    .registers 5

    const/high16 v2, 0x4100

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->g:Lcom/google/android/maps/driveabout/app/bB;

    const-string v1, "TrafficIncident"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_13

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->b(Lcom/google/android/maps/driveabout/app/bx;)V

    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/bx;->a(FF)V

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bx;)V

    goto :goto_12

    :cond_1f
    const/high16 v1, 0x4170

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/bx;->a(FF)V

    goto :goto_1b
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bv;->c(Lcom/google/android/maps/driveabout/app/bx;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/by;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bv;->d:Lcom/google/android/maps/driveabout/app/by;

    return-void
.end method

.method public a(Lt/au;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bv;->k:Lt/au;

    return-void
.end method

.method declared-synchronized a(Lam/b;)Z
    .registers 7

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->h:Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/maps/driveabout/app/bx;

    if-eqz v3, :cond_19

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Lam/b;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3c

    move v0, v1

    :goto_17
    monitor-exit p0

    return v0

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Lam/b;)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3c

    move v0, v1

    goto :goto_17

    :cond_3a
    const/4 v0, 0x0

    goto :goto_17

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/google/android/maps/driveabout/app/bB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->e:Lcom/google/android/maps/driveabout/app/bB;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bv;->d(Lcom/google/android/maps/driveabout/app/bx;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/app/bB;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->f:Lcom/google/android/maps/driveabout/app/bB;

    return-object v0
.end method

.method public declared-synchronized d()[Lcom/google/android/maps/driveabout/app/bx;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/bx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/bx;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->i:Ljava/util/LinkedList;

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

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->m()V

    :cond_c
    return-void
.end method

.method public declared-synchronized g()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->l()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bv;->m()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method h()Lcom/google/android/maps/driveabout/app/bB;
    .registers 14

    new-instance v10, Lcom/google/android/maps/driveabout/app/bB;

    const-string v0, "__DEFAULT"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V

    const/4 v0, 0x4

    new-array v11, v0, [Lcom/google/android/maps/driveabout/app/bz;

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b0076

    const v3, 0x7f0b0076

    const v4, 0x7f0200fb

    const v5, 0x7f020107

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b0078

    const v3, 0x7f0b0078

    const v4, 0x7f0200fa

    const v5, 0x7f020106

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b007b

    const v3, 0x7f0b007d

    const v4, 0x7f0200f7

    const v5, 0x7f020101

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b0079

    const v3, 0x7f0b0079

    const v4, 0x7f0200fd

    const v5, 0x7f020109

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v8, 0x2

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b007c

    const v3, 0x7f0b007c

    const v4, 0x7f0200f9

    const v5, 0x7f020104

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    :cond_8c
    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bz;

    const v2, 0x7f0b0077

    const v3, 0x7f0b0077

    const v4, 0x7f0200f8

    const v5, 0x7f020102

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bz;-><init>(Lcom/google/android/maps/driveabout/app/bv;IIIIZZ)V

    aput-object v0, v11, v8

    :cond_af
    const/4 v0, 0x0

    move v9, v0

    :goto_b1
    array-length v0, v11

    if-ge v9, v0, :cond_fb

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    aget-object v1, v11, v9

    iget v1, v1, Lcom/google/android/maps/driveabout/app/bz;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    aget-object v1, v11, v9

    iget v1, v1, Lcom/google/android/maps/driveabout/app/bz;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    aget-object v3, v11, v9

    iget v6, v3, Lcom/google/android/maps/driveabout/app/bz;->c:I

    aget-object v3, v11, v9

    iget v8, v3, Lcom/google/android/maps/driveabout/app/bz;->d:I

    move-object v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    if-eq v2, v12, :cond_e0

    invoke-virtual {v0, v12}, Lcom/google/android/maps/driveabout/app/bx;->a(Ljava/lang/String;)V

    :cond_e0
    aget-object v1, v11, v9

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/app/bz;->e:Z

    if-nez v1, :cond_ea

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bx;->b(I)Lcom/google/android/maps/driveabout/app/bx;

    :cond_ea
    aget-object v1, v11, v9

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/app/bz;->f:Z

    if-nez v1, :cond_f4

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bx;->b(I)Lcom/google/android/maps/driveabout/app/bx;

    :cond_f4
    invoke-static {v10, v0}, Lcom/google/android/maps/driveabout/app/bB;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_b1

    :cond_fb
    return-object v10
.end method

.method protected i()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    const-string v1, "DA_LayerInfo"

    sget-object v2, LbD/da;->o:Lam/e;

    invoke-static {v0, v1, v2}, Ln/b;->a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;

    move-result-object v0

    :try_start_a
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bv;->b(Lam/b;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_18

    :goto_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bv;->c:Lat/h;

    new-instance v2, Lcom/google/android/maps/driveabout/app/bA;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/driveabout/app/bA;-><init>(Lcom/google/android/maps/driveabout/app/bv;Lam/b;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    return-void

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

.method j()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bv;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
