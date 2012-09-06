.class public Lcom/estrongs/android/pop/fs/SmbFileSystem;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/a;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljcifs/smb/ba;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Ljcifs/smb/ba;->v()Z

    move-result v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a:Ljava/lang/String;

    if-nez v1, :cond_b2

    const-string v1, "MM/dd/yy"

    :goto_e
    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_b6

    const-string v1, ""

    :goto_1e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p0}, Ljcifs/smb/ba;->z()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_c0

    const-string v1, "d"

    :goto_77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/ba;->t()Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string v1, "r"

    :goto_90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/ba;->u()Z

    move-result v1

    if-eqz v1, :cond_c6

    const-string v1, "w"

    :goto_a9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b1
    return-object v0

    :cond_b2
    sget-object v1, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a:Ljava/lang/String;

    goto/16 :goto_e

    :cond_b6
    invoke-virtual {p0}, Ljcifs/smb/ba;->F()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e

    :cond_c0
    const-string v1, "-"

    goto :goto_77

    :cond_c3
    const-string v1, "-"

    goto :goto_90

    :cond_c6
    const-string v1, "-"
    :try_end_c8
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_c8} :catch_c9

    goto :goto_a9

    :catch_c9
    move-exception v1

    goto :goto_b1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 15
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

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->k()I

    move-result v4

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    if-nez v4, :cond_9d

    new-instance v0, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    :goto_26
    if-eqz v2, :cond_bb

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_2d
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_42

    new-instance v3, Lcom/estrongs/android/pop/g;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/g;-><init>(Ljava/util/Map;)V

    :cond_42
    :try_start_42
    const-string v7, "recursion"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_c2

    move-result v7

    :goto_52
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    if-eq v2, v8, :cond_c5

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_c5

    :goto_66
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v6

    if-eqz p5, :cond_73

    invoke-interface {p5}, Lcom/estrongs/android/pop/d/g;->a()V

    :cond_73
    :try_start_73
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8e
    new-instance v2, Ljcifs/smb/ba;

    invoke-direct {v2, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Ljcifs/smb/ba;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    :try_end_97
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_97} :catch_c7

    :goto_97
    if-eqz p5, :cond_9c

    invoke-interface {p5}, Lcom/estrongs/android/pop/d/g;->b()V

    :cond_9c
    return-object v0

    :cond_9d
    if-ne v4, v6, :cond_a6

    new-instance v0, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto :goto_26

    :cond_a6
    if-ne v4, v8, :cond_b0

    new-instance v0, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_26

    :cond_b0
    const/4 v0, 0x3

    if-ne v4, v0, :cond_cc

    new-instance v0, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_26

    :cond_bb
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_2d

    :catch_c2
    move-exception v2

    move v7, v5

    goto :goto_52

    :cond_c5
    move v5, v6

    goto :goto_66

    :catch_c7
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_97

    :cond_cc
    move-object v2, v3

    goto/16 :goto_26
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v11

    if-eqz v11, :cond_15

    iget-boolean v2, v11, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_f

    iget-boolean v2, v11, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_15

    :cond_f
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_14
    return-object v2

    :cond_15
    new-instance v2, Ljcifs/smb/ba;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v2}, Ljcifs/smb/ba;->v()Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_14

    :cond_2a
    invoke-virtual {v2}, Ljcifs/smb/ba;->A()[Ljcifs/smb/ba;

    move-result-object v12

    const/4 v5, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v13

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v6

    const/4 v2, 0x0

    if-nez v13, :cond_a6

    new-instance v5, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v5, v4, v6}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    :goto_4f
    if-eqz v4, :cond_e8

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_56
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_56} :catch_22c
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_56} :catch_168
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_228
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_56} :catch_221

    move-object v3, v2

    :goto_57
    if-nez p2, :cond_f0

    :try_start_59
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_f0

    const/4 v2, 0x0

    move v8, v2

    :goto_65
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_f4

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_f4

    const/4 v2, 0x0

    move v7, v2

    :goto_7c
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a:Ljava/lang/String;

    if-eqz v12, :cond_230

    array-length v14, v12

    const/4 v2, 0x0

    move v6, v2

    :goto_8b
    if-lt v6, v14, :cond_f7

    if-eqz v9, :cond_230

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_230

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_a0
    .catch Ljava/net/MalformedURLException; {:try_start_59 .. :try_end_a0} :catch_145
    .catch Ljcifs/smb/SmbException; {:try_start_59 .. :try_end_a0} :catch_168
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a0} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_59 .. :try_end_a0} :catch_1b9

    move-result v2

    if-nez v2, :cond_20b

    move-object v2, v3

    goto/16 :goto_14

    :cond_a6
    const/4 v7, 0x1

    if-ne v13, v7, :cond_b2

    :try_start_a9
    new-instance v5, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v5, v4, v6}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto :goto_4f

    :cond_b2
    const/4 v7, 0x2

    if-ne v13, v7, :cond_be

    new-instance v5, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v5, v4, v6}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto :goto_4f

    :cond_be
    const/4 v7, 0x3

    if-ne v13, v7, :cond_ca

    new-instance v5, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v5, v4, v6}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto :goto_4f

    :cond_ca
    const/4 v7, 0x4

    if-ne v13, v7, :cond_238

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_233

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v5, v4, v6}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto/16 :goto_4f

    :cond_e8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_ed
    .catch Ljava/net/MalformedURLException; {:try_start_a9 .. :try_end_ed} :catch_22c
    .catch Ljcifs/smb/SmbException; {:try_start_a9 .. :try_end_ed} :catch_168
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ed} :catch_228
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a9 .. :try_end_ed} :catch_221

    move-object v3, v2

    goto/16 :goto_57

    :cond_f0
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_65

    :cond_f4
    const/4 v2, 0x1

    move v7, v2

    goto :goto_7c

    :cond_f7
    :try_start_f7
    aget-object v15, v12, v6

    if-nez v15, :cond_ff

    :cond_fb
    :goto_fb
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_8b

    :cond_ff
    invoke-virtual {v15}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_110

    if-eqz v2, :cond_110

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_fb

    :cond_110
    invoke-static {v11, v2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-virtual {v15}, Ljcifs/smb/ba;->n()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15}, Ljcifs/smb/ba;->v()Z

    move-result v17

    if-eqz v13, :cond_123

    const/4 v2, 0x1

    if-ne v13, v2, :cond_149

    :cond_123
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12c
    :goto_12c
    if-eqz v7, :cond_1fa

    invoke-static {v15}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljcifs/smb/ba;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :catch_145
    move-exception v2

    move-object v2, v3

    goto/16 :goto_14

    :cond_149
    const/4 v2, 0x2

    if-ne v13, v2, :cond_172

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v18, 0x1

    if-eqz v17, :cond_16d

    const-wide/16 v4, 0x0

    :goto_15c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v18

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_167
    .catch Ljava/net/MalformedURLException; {:try_start_f7 .. :try_end_167} :catch_145
    .catch Ljcifs/smb/SmbException; {:try_start_f7 .. :try_end_167} :catch_168
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_167} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f7 .. :try_end_167} :catch_1b9

    goto :goto_12c

    :catch_168
    move-exception v2

    invoke-virtual {v2}, Ljcifs/smb/SmbException;->printStackTrace()V

    throw v2

    :cond_16d
    :try_start_16d
    invoke-virtual {v15}, Ljcifs/smb/ba;->F()J

    move-result-wide v4

    goto :goto_15c

    :cond_172
    const/4 v2, 0x3

    if-ne v13, v2, :cond_194

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v15}, Ljcifs/smb/ba;->z()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12c

    :catch_190
    move-exception v2

    move-object v2, v3

    goto/16 :goto_14

    :cond_194
    const/4 v2, 0x4

    if-ne v13, v2, :cond_12c

    if-nez v9, :cond_1c4

    const/4 v2, 0x0

    :goto_19a
    if-eqz v2, :cond_1e0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v4, v5

    const/4 v5, 0x1

    iget v2, v2, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b7
    .catch Ljava/net/MalformedURLException; {:try_start_16d .. :try_end_1b7} :catch_145
    .catch Ljcifs/smb/SmbException; {:try_start_16d .. :try_end_1b7} :catch_168
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_1b7} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16d .. :try_end_1b7} :catch_1b9

    goto/16 :goto_12c

    :catch_1b9
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v3

    move-object/from16 v3, v20

    :goto_1bf
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_14

    :cond_1c4
    :try_start_1c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    goto :goto_19a

    :cond_1e0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12c

    :cond_1fa
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fb

    :cond_20b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_21f
    .catch Ljava/net/MalformedURLException; {:try_start_1c4 .. :try_end_21f} :catch_145
    .catch Ljcifs/smb/SmbException; {:try_start_1c4 .. :try_end_21f} :catch_168
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_21f} :catch_190
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c4 .. :try_end_21f} :catch_1b9

    goto/16 :goto_9d

    :catch_221
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v3

    move-object/from16 v3, v20

    goto :goto_1bf

    :catch_228
    move-exception v2

    move-object v2, v3

    goto/16 :goto_14

    :catch_22c
    move-exception v2

    move-object v2, v3

    goto/16 :goto_14

    :cond_230
    move-object v2, v3

    goto/16 :goto_14

    :cond_233
    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto/16 :goto_4f

    :cond_238
    move-object v9, v2

    move-object v10, v4

    move-object v4, v5

    goto/16 :goto_4f
.end method

.method private static a(Ljava/util/Map;Ljava/util/HashMap;Ljcifs/smb/ba;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljcifs/smb/ba;",
            "Ljava/io/FileFilter;",
            "IZZZ",
            "Lcom/estrongs/android/pop/d/g;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ljcifs/smb/ba;->v()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p2}, Ljcifs/smb/ba;->A()[Ljcifs/smb/ba;

    move-result-object v11

    if-eqz v11, :cond_11

    array-length v12, v11

    const/4 v1, 0x0

    move v10, v1

    :goto_f
    if-lt v10, v12, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    aget-object v3, v11, v10

    invoke-virtual {v3}, Ljcifs/smb/ba;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    if-eqz p8, :cond_27

    invoke-interface/range {p8 .. p8}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_27
    invoke-virtual {v3}, Ljcifs/smb/ba;->v()Z

    move-result v1

    if-eqz v1, :cond_40

    if-eqz p7, :cond_40

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Ljcifs/smb/ba;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V

    :cond_40
    if-eqz p8, :cond_48

    invoke-interface/range {p8 .. p8}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_48
    if-eqz p3, :cond_57

    new-instance v1, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;

    invoke-direct {v1, v3}, Lcom/estrongs/android/pop/fs/SmbFileSystem$SmbFileWrapper;-><init>(Ljcifs/smb/ba;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_69

    :cond_57
    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/util/Map;Ljava/util/Map;Ljcifs/smb/ba;IZZ)V

    if-eqz p8, :cond_69

    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Lcom/estrongs/android/pop/d/g;->a(Ljava/lang/Object;)V
    :try_end_69
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_69} :catch_6d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_69} :catch_72

    :cond_69
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_f

    :catch_6d
    move-exception v1

    invoke-virtual {v1}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_11

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Ljcifs/smb/ba;IZZ)V
    .registers 15
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
            "Ljcifs/smb/ba;",
            "IZZ)V"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p5, :cond_14

    invoke-virtual {p2}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p2}, Ljcifs/smb/ba;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljcifs/smb/ba;->v()Z

    move-result v3

    if-eqz p3, :cond_20

    if-ne p3, v7, :cond_3b

    :cond_20
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    if-eqz p4, :cond_71

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljcifs/smb/ba;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_3b
    if-ne p3, v8, :cond_58

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    if-eqz v3, :cond_53

    const-wide/16 v0, 0x0

    :goto_49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_53
    invoke-virtual {p2}, Ljcifs/smb/ba;->F()J

    move-result-wide v0

    goto :goto_49

    :cond_58
    const/4 v0, 0x3

    if-ne p3, v0, :cond_27

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p2}, Ljcifs/smb/ba;->z()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_71
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 13

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    cmp-long v1, p2, v7

    if-nez v1, :cond_44

    const/4 v2, 0x0

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_1d
    :try_start_1d
    new-instance v3, Ljcifs/smb/ba;

    invoke-direct {v3, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->s()Z

    move-result v4

    if-nez v4, :cond_2e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    move v0, v6

    :goto_2d
    return v0

    :cond_2e
    invoke-virtual {v3}, Ljcifs/smb/ba;->E()V
    :try_end_31
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_31} :catch_3e
    .catch Ljcifs/smb/SmbException; {:try_start_1d .. :try_end_31} :catch_41

    const/4 v6, 0x1

    move v3, v6

    :goto_33
    cmp-long v4, p2, v7

    if-eqz v4, :cond_39

    if-nez v3, :cond_3c

    :cond_39
    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_3c
    move v0, v3

    goto :goto_2d

    :catch_3e
    move-exception v3

    move v3, v6

    goto :goto_33

    :catch_41
    move-exception v3

    move v3, v6

    goto :goto_33

    :cond_44
    move-wide v1, p2

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljcifs/smb/ba;

    invoke-direct {v2, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_65

    move-object v1, p2

    :goto_1c
    new-instance v3, Ljcifs/smb/ba;

    invoke-direct {v3, v1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-eqz v1, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, v4}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/ba;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->E()V

    :goto_60
    invoke-virtual {v1, v3}, Ljcifs/smb/ba;->a(Ljcifs/smb/ba;)V

    const/4 v0, 0x1

    goto :goto_c

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_77
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_77} :catch_7b
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_77} :catch_79

    move-result-object v1

    goto :goto_1c

    :catch_79
    move-exception v1

    goto :goto_c

    :catch_7b
    move-exception v1

    goto :goto_c

    :cond_7d
    move-object v1, v2

    goto :goto_60
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->s()Z
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_9} :catch_d
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v1

    goto :goto_a

    :catch_d
    move-exception v1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->s()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    new-instance v2, Ljcifs/smb/ba;

    invoke-direct {v2, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/ba;)V
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1b} :catch_1f
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1b} :catch_1d

    const/4 v0, 0x1

    goto :goto_c

    :catch_1d
    move-exception v1

    goto :goto_c

    :catch_1f
    move-exception v1

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljcifs/smb/ba;

    invoke-direct {v2, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_13

    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ljcifs/smb/ba;->G()V

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v2}, Ljcifs/smb/ba;->s()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ljcifs/smb/ba;->I()V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_1c} :catch_1d
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_1c} :catch_20

    goto :goto_12

    :catch_1d
    move-exception v0

    move v0, v1

    goto :goto_12

    :catch_20
    move-exception v0

    move v0, v1

    goto :goto_12

    :cond_23
    move v0, v1

    goto :goto_12
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->s()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Ljcifs/smb/ba;->H()V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_f} :catch_13
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_f} :catch_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10

    :catch_13
    move-exception v1

    goto :goto_10
.end method

.method public static c(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    new-instance v0, Ljcifs/smb/ba;

    invoke-direct {v0, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljcifs/smb/ba;->w()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljcifs/smb/ba;->F()J
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_14} :catch_1a
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-wide v0

    :goto_15
    return-wide v0

    :catch_16
    move-exception v0

    :cond_17
    :goto_17
    const-wide/16 v0, -0x1

    goto :goto_15

    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->s()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v1}, Ljcifs/smb/ba;->v()Z
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_10} :catch_14
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    goto :goto_c

    :catch_12
    move-exception v1

    goto :goto_c

    :catch_14
    move-exception v1

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Ljcifs/smb/ba;

    invoke-direct {v3, p0}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->v()Z

    move-result v2

    iput-boolean v2, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v2, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v2, :cond_67

    invoke-virtual {v3}, Ljcifs/smb/ba;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/d/e;->a(I)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->A()[Ljcifs/smb/ba;

    move-result-object v4

    if-eqz v4, :cond_2d

    array-length v5, v4

    const/4 v2, 0x0

    :goto_2b
    if-lt v2, v5, :cond_4d

    :cond_2d
    :goto_2d
    invoke-virtual {v3}, Ljcifs/smb/ba;->z()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/android/pop/d/e;->j:J

    invoke-virtual {v3}, Ljcifs/smb/ba;->y()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/android/pop/d/e;->h:J

    invoke-virtual {v3}, Ljcifs/smb/ba;->t()Z

    move-result v2

    iput-boolean v2, v1, Lcom/estrongs/android/pop/d/e;->k:Z

    invoke-virtual {v3}, Ljcifs/smb/ba;->u()Z

    move-result v2

    iput-boolean v2, v1, Lcom/estrongs/android/pop/d/e;->l:Z

    invoke-virtual {v3}, Ljcifs/smb/ba;->x()Z

    move-result v2

    iput-boolean v2, v1, Lcom/estrongs/android/pop/d/e;->m:Z

    move-object v0, v1

    goto :goto_c

    :cond_4d
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljcifs/smb/ba;->v()Z

    move-result v6

    if-eqz v6, :cond_5e

    iget v6, v1, Lcom/estrongs/android/pop/d/e;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/estrongs/android/pop/d/e;->f:I

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_5e
    iget v6, v1, Lcom/estrongs/android/pop/d/e;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/estrongs/android/pop/d/e;->g:I

    goto :goto_5b

    :catch_65
    move-exception v1

    goto :goto_c

    :cond_67
    const-string v2, "File"

    iput-object v2, v1, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljcifs/smb/ba;->F()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/android/pop/d/e;->e:J
    :try_end_71
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_71} :catch_65
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_71} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_71} :catch_74

    goto :goto_2d

    :catch_72
    move-exception v1

    goto :goto_c

    :catch_74
    move-exception v1

    goto :goto_c
.end method

.method public static f(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljcifs/smb/bc;

    invoke-direct {v0, p0}, Ljcifs/smb/bc;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_6} :catch_a
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_6} :catch_d

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method public static g(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljcifs/smb/bd;

    invoke-direct {v0, p0}, Ljcifs/smb/bd;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_6} :catch_a
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_6} :catch_d

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method
