.class public Lcom/estrongs/android/util/ab;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/util/ab;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    sput-object v0, Lcom/estrongs/android/util/ab;->b:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ab;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/util/ab;->d:Z

    iput-boolean v0, p0, Lcom/estrongs/android/util/ab;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/estrongs/android/util/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(IIIII)Ljava/lang/String;
    .registers 8

    const-string v1, "music"

    if-ge p1, p2, :cond_1c

    const-string v1, "video"

    move v0, p2

    :goto_7
    if-ge v0, p3, :cond_c

    const-string v1, "doc"

    move v0, p3

    :cond_c
    if-ge v0, p4, :cond_11

    const-string v1, "apk"

    move v0, p4

    :cond_11
    if-ge v0, p5, :cond_19

    const-string v0, "pic"

    :goto_15
    if-nez p5, :cond_18

    const/4 v0, 0x0

    :cond_18
    return-object v0

    :cond_19
    move p5, v0

    move-object v0, v1

    goto :goto_15

    :cond_1c
    move v0, p1

    goto :goto_7
.end method

.method static synthetic a(Lcom/estrongs/android/util/ab;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/util/ab;->d:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/estrongs/android/util/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    if-nez v0, :cond_b

    new-instance v0, Lcom/estrongs/android/util/ab;

    invoke-direct {v0}, Lcom/estrongs/android/util/ab;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    :cond_b
    sget-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/util/ab;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/android/util/ab;->a:Lcom/estrongs/android/util/ab;

    invoke-direct {v0}, Lcom/estrongs/android/util/ab;->d()V

    :cond_9
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/util/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/util/ac;-><init>(Lcom/estrongs/android/util/ab;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/ab;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/ab;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "music"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v0, :cond_4b

    const-string v0, "\u97f3\u4e50"

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v0, :cond_4b

    const-string v0, "\u89c6\u9891"

    goto :goto_e

    :cond_1e
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v0, :cond_4b

    const-string v0, "\u5c0f\u8bf4"

    goto :goto_e

    :cond_2d
    const-string v0, "apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v0, :cond_4b

    const-string v0, "APK"

    goto :goto_e

    :cond_3c
    const-string v0, "pic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    sget v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    if-nez v0, :cond_4b

    const-string v0, "\u56fe\u7247"

    goto :goto_e

    :cond_4b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/util/ab;->d:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/ab;->e:Z

    :try_start_9
    iget-object v0, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_13

    iput-object v3, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    goto :goto_5

    :catch_13
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1a

    iput-object v3, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    goto :goto_5

    :catchall_1a
    move-exception v0

    iput-object v3, p0, Lcom/estrongs/android/util/ab;->f:Ljava/lang/Thread;

    throw v0
.end method

.method static synthetic e(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/estrongs/android/util/ab;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/mnt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_28
    :try_start_28
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "artist"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_af

    move-result-object v1

    if-eqz v1, :cond_52

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_c3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_c5

    move-result v0

    if-nez v0, :cond_59

    :cond_52
    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    move-object v0, v6

    :cond_58
    :goto_58
    return-object v0

    :cond_59
    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, ""

    if-eqz v3, :cond_8a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8a
    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_59 .. :try_end_a8} :catchall_c3
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a8} :catch_c5

    move-result-object v0

    :cond_a9
    if-eqz v1, :cond_58

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_58

    :catch_af
    move-exception v0

    move-object v1, v6

    :goto_b1
    :try_start_b1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_c3

    if-eqz v1, :cond_b9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b9
    move-object v0, v6

    goto :goto_58

    :catchall_bb
    move-exception v0

    move-object v1, v6

    :goto_bd
    if-eqz v1, :cond_c2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c2
    throw v0

    :catchall_c3
    move-exception v0

    goto :goto_bd

    :catch_c5
    move-exception v0

    goto :goto_b1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_29
    const/4 v1, 0x6

    if-ge v7, v1, :cond_32

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_47

    :cond_32
    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/util/ab;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/util/ab;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    sput-object v1, Lcom/estrongs/android/util/ab;->c:Ljava/lang/String;

    :cond_3f
    const/4 v1, 0x6

    if-lt v7, v1, :cond_160

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/estrongs/android/util/ab;->e:Z

    if-eqz v1, :cond_52

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_52
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_60

    move v1, v7

    :goto_5b
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v1

    goto :goto_29

    :cond_60
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_246

    const-string v1, "."

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_8c
    invoke-static {v9}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->A(I)Z

    move-result v14

    if-eqz v14, :cond_c9

    add-int/lit8 v5, v5, 0x1

    move v8, v2

    :goto_99
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v7, 0x1

    if-eqz v12, :cond_23c

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_109

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v2, v8

    goto :goto_5b

    :cond_c1
    if-nez v1, :cond_243

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_c9
    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->d(I)Z

    move-result v14

    if-eqz v14, :cond_d3

    add-int/lit8 v2, v2, 0x1

    move v8, v2

    goto :goto_99

    :cond_d3
    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->e(I)Z

    move-result v14

    if-eqz v14, :cond_dd

    add-int/lit8 v3, v3, 0x1

    move v8, v2

    goto :goto_99

    :cond_dd
    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->a(I)Z

    move-result v14

    if-eqz v14, :cond_e7

    add-int/lit8 v6, v6, 0x1

    move v8, v2

    goto :goto_99

    :cond_e7
    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->u(I)Z

    move-result v14

    if-nez v14, :cond_105

    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->m(I)Z

    move-result v14

    if-nez v14, :cond_105

    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->k(I)Z

    move-result v14

    if-nez v14, :cond_105

    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->h(I)Z

    move-result v14

    if-nez v14, :cond_105

    invoke-static {v8}, Lcom/estrongs/android/pop/a/f;->s(I)Z

    move-result v8

    if-eqz v8, :cond_240

    :cond_105
    add-int/lit8 v4, v4, 0x1

    move v8, v2

    goto :goto_99

    :cond_109
    const/4 v1, 0x0

    invoke-static {v9}, Lcom/estrongs/android/pop/a/f;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_130

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    move-object v15, v1

    move v1, v2

    move-object v2, v15

    :goto_123
    if-eqz v2, :cond_12d

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12d
    move v2, v8

    goto/16 :goto_5b

    :cond_130
    invoke-static {v9}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_148

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    move v1, v2

    move-object v2, v15

    goto :goto_123

    :cond_148
    invoke-static {v9}, Lcom/estrongs/android/pop/a/f;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_237

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    move v1, v2

    move-object v2, v15

    goto :goto_123

    :cond_160
    const/4 v1, 0x0

    move v8, v1

    :goto_162
    const/4 v1, 0x2

    if-ge v8, v1, :cond_16b

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_193

    :cond_16b
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/util/ab;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_175

    sput-object v1, Lcom/estrongs/android/util/ab;->c:Ljava/lang/String;

    :cond_175
    const-string v1, "EEE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get keywords:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_193
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/estrongs/android/util/ab;->e:Z

    if-eqz v1, :cond_19f

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_19f
    const/4 v1, 0x6

    if-lt v7, v1, :cond_1a8

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_1a8
    new-instance v9, Ljava/io/File;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    const/4 v1, 0x0

    move v15, v1

    move v1, v6

    move v6, v15

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    move/from16 v17, v3

    move v3, v4

    move/from16 v4, v17

    :goto_1c5
    const/16 v10, 0xa

    if-ge v6, v10, :cond_1cc

    array-length v10, v9

    if-lt v6, v10, :cond_1d9

    :cond_1cc
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v1

    move v15, v2

    move v2, v5

    move v5, v15

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_162

    :cond_1d9
    aget-object v10, v9, v6

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1e4

    :cond_1e1
    :goto_1e1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c5

    :cond_1e4
    aget-object v10, v9, v6

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->A(I)Z

    move-result v12

    if-eqz v12, :cond_1f7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e1

    :cond_1f7
    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->d(I)Z

    move-result v12

    if-eqz v12, :cond_200

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e1

    :cond_200
    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->e(I)Z

    move-result v12

    if-eqz v12, :cond_209

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e1

    :cond_209
    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->a(I)Z

    move-result v12

    if-eqz v12, :cond_212

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e1

    :cond_212
    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->u(I)Z

    move-result v12

    if-nez v12, :cond_230

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->m(I)Z

    move-result v12

    if-nez v12, :cond_230

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->k(I)Z

    move-result v12

    if-nez v12, :cond_230

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->h(I)Z

    move-result v12

    if-nez v12, :cond_230

    invoke-static {v10}, Lcom/estrongs/android/pop/a/f;->s(I)Z
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22d} :catch_233

    move-result v10

    if-eqz v10, :cond_1e1

    :cond_230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e1

    :catch_233
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_237
    move-object v15, v1

    move v1, v2

    move-object v2, v15

    goto/16 :goto_123

    :cond_23c
    move v1, v2

    move v2, v8

    goto/16 :goto_5b

    :cond_240
    move v8, v2

    goto/16 :goto_99

    :cond_243
    move-object v1, v9

    goto/16 :goto_8c

    :cond_246
    move-object v1, v9

    move v8, v2

    goto/16 :goto_99
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
