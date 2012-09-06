.class public Lcom/estrongs/android/pop/fs/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/f;->b:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/estrongs/android/pop/d/h;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_12

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_12

    :cond_31
    :try_start_31
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_12

    :cond_46
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_2b

    goto :goto_12
.end method

.method private static a(Lcom/estrongs/android/pop/d/e;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    if-nez v0, :cond_6c

    const-string v0, "yyyy-MM-dd"

    :goto_d
    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_6f

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_76

    const-string v0, "d"

    :goto_45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/d/e;->k:Z

    if-eqz v0, :cond_79

    const-string v0, "r"

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/d/e;->l:Z

    if-eqz v0, :cond_7c

    const-string v0, "w"

    :goto_5c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6c
    sget-object v0, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    goto :goto_d

    :cond_6f
    iget-wide v4, p0, Lcom/estrongs/android/pop/d/e;->e:J

    invoke-static {v4, v5}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_76
    const-string v0, "-"

    goto :goto_45

    :cond_79
    const-string v0, "-"

    goto :goto_52

    :cond_7c
    const-string v0, "-"

    goto :goto_5c
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    if-nez v0, :cond_73

    const-string v0, "yyyy-MM-dd"

    :goto_d
    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7f

    const-string v0, "d"

    :goto_48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, "r"

    :goto_57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "w"

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_73
    sget-object v0, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    goto :goto_d

    :cond_76
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_7f
    const-string v0, "-"

    goto :goto_48

    :cond_82
    const-string v0, "-"

    goto :goto_57

    :cond_85
    const-string v0, "-"

    goto :goto_63
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;ZZ)Ljava/util/Map;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v13

    if-eqz v13, :cond_14

    iget-boolean v2, v13, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_e

    iget-boolean v2, v13, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_14

    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_13
    return-object v2

    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    if-eqz p4, :cond_39

    const-string v2, "/sys/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "/proc/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_39
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/d/q;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_13

    :cond_44
    if-eqz p0, :cond_60

    const v2, 0x7f090228

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/fs/f;->b:Ljava/lang/String;

    const v2, 0x7f090229

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/fs/f;->c:Ljava/lang/String;

    :cond_60
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_75

    :cond_73
    const/4 v2, 0x0

    goto :goto_13

    :cond_75
    const/4 v2, 0x0

    check-cast v2, [Ljava/io/File;

    if-eqz p2, :cond_111

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    :goto_81
    const/4 v4, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v15

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/f;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v15, :cond_118

    new-instance v4, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v4, v14, v5}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v12, v2

    move-object v2, v4

    :goto_ab
    if-eqz v2, :cond_151

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_b2
    if-nez p3, :cond_158

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_158

    const/4 v2, 0x0

    move v4, v2

    :goto_c0
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_15c

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_15c

    const/4 v2, 0x0

    move v11, v2

    :goto_d7
    if-eqz v3, :cond_10e

    const-string v2, "/mnt/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_160

    const-string v2, "/mnt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_160

    const/4 v2, 0x0

    move v5, v2

    :goto_ef
    array-length v0, v3

    move/from16 v16, v0

    const/4 v2, 0x0

    move v10, v2

    :goto_f4
    move/from16 v0, v16

    if-lt v10, v0, :cond_163

    if-eqz v12, :cond_10e

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_10e

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_108
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_29f

    :cond_10e
    move-object v2, v8

    goto/16 :goto_13

    :cond_111
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_81

    :cond_118
    const/4 v6, 0x1

    if-ne v15, v6, :cond_123

    new-instance v4, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v4, v14, v5}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v12, v2

    move-object v2, v4

    goto :goto_ab

    :cond_123
    const/4 v6, 0x2

    if-ne v15, v6, :cond_12f

    new-instance v4, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v4, v14, v5}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v12, v2

    move-object v2, v4

    goto/16 :goto_ab

    :cond_12f
    const/4 v6, 0x3

    if-ne v15, v6, :cond_13b

    new-instance v4, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v4, v14, v5}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v12, v2

    move-object v2, v4

    goto/16 :goto_ab

    :cond_13b
    const/4 v6, 0x4

    if-ne v15, v6, :cond_2b8

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v4, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v4, v14, v5}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v12, v2

    move-object v2, v4

    goto/16 :goto_ab

    :cond_151
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_b2

    :cond_158
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_c0

    :cond_15c
    const/4 v2, 0x1

    move v11, v2

    goto/16 :goto_d7

    :cond_160
    const/4 v2, 0x1

    move v5, v2

    goto :goto_ef

    :cond_163
    aget-object v17, v3, v10

    if-nez v17, :cond_16b

    :cond_167
    :goto_167
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_f4

    :cond_16b
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_17c

    if-eqz v2, :cond_167

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_167

    :cond_17c
    invoke-static {v13, v2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_167

    if-eqz v5, :cond_1ba

    sget-object v6, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v7, "Amoi_N90"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_198

    sget-object v6, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v7, "styleflying"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ba

    :cond_198
    if-eqz v2, :cond_167

    const-string v6, "asec"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_167

    const-string v6, "debugfs"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_167

    const-string v6, "obb"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_167

    const-string v6, "secure"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    :cond_1ba
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v18

    const/4 v2, 0x0

    const/4 v7, 0x4

    if-ne v15, v7, :cond_1cb

    if-eqz v14, :cond_1cb

    if-nez v12, :cond_227

    const/4 v2, 0x0

    :cond_1cb
    :goto_1cb
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2f

    if-eq v7, v9, :cond_2b5

    if-eqz v18, :cond_2b5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_1ef
    if-eqz v14, :cond_20f

    const/4 v6, 0x4

    if-ne v15, v6, :cond_245

    if-eqz v2, :cond_22e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    iget v2, v2, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v2

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v14, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20f
    :goto_20f
    if-eqz v11, :cond_290

    invoke-static/range {v17 .. v17}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_167

    :cond_227
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    goto :goto_1cb

    :cond_22e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v14, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20f

    :cond_245
    if-eqz v15, :cond_24a

    const/4 v2, 0x1

    if-ne v15, v2, :cond_252

    :cond_24a
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20f

    :cond_252
    const/4 v2, 0x2

    if-ne v15, v2, :cond_274

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v19, 0x1

    if-eqz v18, :cond_26f

    const-wide/16 v6, 0x0

    :goto_265
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v19

    invoke-virtual {v14, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20f

    :cond_26f
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_265

    :cond_274
    const/4 v2, 0x3

    if-ne v15, v2, :cond_20f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v14, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20f

    :cond_290
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_167

    :cond_29f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V

    goto/16 :goto_108

    :cond_2b5
    move-object v9, v6

    goto/16 :goto_1ef

    :cond_2b8
    move-object v12, v2

    move-object v2, v4

    goto/16 :goto_ab
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/estrongs/android/pop/d/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v10, 0x1

    :cond_f
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v5

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    if-nez v5, :cond_90

    new-instance v0, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    :goto_32
    if-eqz v2, :cond_ae

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4f

    new-instance v4, Lcom/estrongs/android/pop/g;

    invoke-direct {v4, v2}, Lcom/estrongs/android/pop/g;-><init>(Ljava/util/Map;)V

    :cond_4f
    const/4 v8, 0x0

    :try_start_50
    const-string v3, "recursion"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_b6

    move-result v8

    :goto_60
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b4

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_b4

    const/4 v6, 0x0

    :goto_76
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v7

    if-eqz p5, :cond_83

    invoke-interface/range {p5 .. p5}, Lcom/estrongs/android/pop/d/g;->a()V

    :cond_83
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v10}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;Z)V

    if-eqz p5, :cond_8f

    invoke-interface/range {p5 .. p5}, Lcom/estrongs/android/pop/d/g;->b()V

    :cond_8f
    return-object v0

    :cond_90
    const/4 v3, 0x1

    if-ne v5, v3, :cond_9a

    new-instance v0, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto :goto_32

    :cond_9a
    const/4 v3, 0x2

    if-ne v5, v3, :cond_a4

    new-instance v0, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto :goto_32

    :cond_a4
    const/4 v3, 0x3

    if-ne v5, v3, :cond_b8

    new-instance v0, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto :goto_32

    :cond_ae
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_39

    :cond_b4
    const/4 v6, 0x1

    goto :goto_76

    :catch_b6
    move-exception v2

    goto :goto_60

    :cond_b8
    move-object v2, v0

    goto/16 :goto_32
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "IZZZ",
            "Lcom/estrongs/android/pop/d/g;",
            "Z)V"
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v3

    if-eqz v3, :cond_f

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v4, v3, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v4, :cond_f

    iget-boolean v3, v3, Lcom/estrongs/android/pop/d/e;->n:Z

    if-nez v3, :cond_f

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;ZZ)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_33
    :goto_33
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    if-eqz p9, :cond_51

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_51
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_33

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_82

    if-eqz p8, :cond_82

    :try_start_66
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v2 .. v12}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;Z)V
    :try_end_82
    .catch Ljava/lang/StackOverflowError; {:try_start_66 .. :try_end_82} :catch_ba

    :cond_82
    if-eqz p9, :cond_8a

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_8a
    if-eqz p4, :cond_9f

    new-instance v3, Ljava/io/File;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_9f
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;IZZ)V

    if-eqz p9, :cond_33

    move-object/from16 v0, p9

    invoke-interface {v0, p0}, Lcom/estrongs/android/pop/d/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_33

    :catch_ba
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->printStackTrace()V

    goto/16 :goto_f
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;IZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-nez p5, :cond_18

    iget-object v0, v3, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_9

    :cond_18
    iget-object v0, v3, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    iget-boolean v4, v3, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9e

    if-eqz v4, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_40
    if-eqz p3, :cond_44

    if-ne p3, v8, :cond_5f

    :cond_44
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :goto_4b
    if-eqz p4, :cond_91

    invoke-static {v3}, Lcom/estrongs/android/pop/fs/f;->a(Lcom/estrongs/android/pop/d/e;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v7

    aput-object v0, v1, v8

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_5f
    if-ne p3, v9, :cond_7a

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v7

    if-eqz v4, :cond_77

    const-wide/16 v0, 0x0

    :goto_6d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_77
    iget-wide v0, v3, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_6d

    :cond_7a
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4b

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v7

    iget-wide v5, v3, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_91
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_9e
    move-object v2, v0

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 15

    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    goto :goto_13

    :cond_2a
    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    cmp-long v1, p2, v9

    if-nez v1, :cond_ad

    const/4 v2, 0x0

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_44
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v0, v1, v2, v6}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    move v0, v6

    goto :goto_13

    :cond_54
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_64

    array-length v7, v5

    move v3, v6

    :goto_62
    if-lt v3, v7, :cond_73

    :cond_64
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    :cond_68
    :goto_68
    cmp-long v4, p2, v9

    if-eqz v4, :cond_6e

    if-nez v3, :cond_71

    :cond_6e
    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_71
    move v0, v3

    goto :goto_13

    :cond_73
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v1, v2}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_81

    move v0, v6

    goto :goto_13

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_84
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_68

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->T(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a4

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    :cond_a4
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_68

    :cond_ad
    move-wide v1, p2

    goto :goto_44
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 12

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/d/q;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    :goto_1b
    return v0

    :cond_1c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_1b

    :cond_29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_6a
    invoke-static {p0, p2, p3, p4}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    :goto_6d
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_1b

    :cond_72
    :try_start_72
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "tmp"

    new-instance v5, Ljava/io/File;

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_88} :catch_89

    goto :goto_6a

    :catch_89
    move-exception v0

    move v0, v2

    goto :goto_1b

    :cond_8c
    move-object v0, v1

    goto :goto_6d
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v1}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/d/q;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_12
    :goto_12
    return v0

    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v2}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/pop/d/q;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_16
    :goto_16
    return v0

    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_41

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_4c

    move-result v0

    :cond_28
    :goto_28
    if-nez v0, :cond_16

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_16

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_16

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_4c

    move-result v0

    goto :goto_28

    :catch_4c
    move-exception v1

    goto :goto_28
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v1, :cond_2a

    const-string v1, "Folder"

    iput-object v1, v0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    :goto_1c
    iget-object v1, v0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->m:Z

    :goto_29
    return-object v0

    :cond_2a
    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_1c

    :cond_2f
    iput-boolean v2, v0, Lcom/estrongs/android/pop/d/e;->m:Z

    goto :goto_29

    :cond_32
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    move-object v0, v1

    goto :goto_29

    :cond_3f
    new-instance v0, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v1, :cond_8f

    const-string v1, "Folder"

    iput-object v1, v0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    if-eqz p1, :cond_5e

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5e

    array-length v5, v4

    move v1, v2

    :goto_5c
    if-lt v1, v5, :cond_77

    :cond_5e
    :goto_5e
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->k:Z

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->l:Z

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/d/e;->m:Z

    goto :goto_29

    :cond_77
    aget-object v2, v4, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_88

    iget v2, v0, Lcom/estrongs/android/pop/d/e;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/estrongs/android/pop/d/e;->f:I

    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_88
    iget v2, v0, Lcom/estrongs/android/pop/d/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/estrongs/android/pop/d/e;->g:I

    goto :goto_85

    :cond_8f
    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_5e
.end method

.method private static b(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    check-cast v0, [Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_1a} :catch_3b
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_1a} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_1a} :catch_41

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/fs/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catch_3b
    move-exception v0

    move v0, v1

    goto :goto_1a

    :catch_3e
    move-exception v0

    move v0, v1

    goto :goto_1a

    :catch_41
    move-exception v0

    move v0, v1

    goto :goto_1a

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/fs/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_5e
    move v0, v1

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_22
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static c(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-boolean v3, v2, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_1b

    :cond_1a
    :goto_1a
    return-wide v0

    :cond_1b
    iget-wide v0, v2, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_1a

    :cond_1e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1a
.end method

.method public static d(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v2}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    goto :goto_13

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_4d

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_13

    :cond_47
    :try_start_47
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_2c

    goto :goto_13

    :cond_4d
    move-object v0, v1

    goto :goto_13
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0, v3}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_23
    if-nez v0, :cond_13

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_13

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_13
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-boolean v0, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    :cond_16
    :goto_16
    return v0

    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_16
.end method
