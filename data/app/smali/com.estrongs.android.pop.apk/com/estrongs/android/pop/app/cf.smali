.class public Lcom/estrongs/android/pop/app/cf;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:J

.field d:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cf;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cf;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/estrongs/android/pop/app/cf;->c:J

    return-void
.end method


# virtual methods
.method a(J)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/cg;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/app/cg;-><init>(Lcom/estrongs/android/pop/app/cf;J)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    iget-object v7, p0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v0, Lcom/estrongs/android/pop/app/ch;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/ch;-><init>(Lcom/estrongs/android/pop/app/cf;JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/ci;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/ci;-><init>(Lcom/estrongs/android/pop/app/cf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v13

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cf;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v2, v3}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_4d

    :goto_24
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    :goto_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_52

    if-gtz v10, :cond_17d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0902e0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cf;->a(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    :cond_52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/cf;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/estrongs/android/pop/d/p;->g(Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/app/cf;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v13, v4}, Lcom/estrongs/android/pop/d/p;->c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v2

    if-eqz v1, :cond_16c

    if-eqz v8, :cond_ca

    if-nez v9, :cond_ca

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/cf;->a(J)V

    move v2, v8

    move v3, v9

    move v4, v10

    :goto_c2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto/16 :goto_2c

    :cond_ca
    invoke-virtual {v13, v5}, Lcom/estrongs/android/pop/d/p;->c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v1

    iget-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v3, :cond_135

    iget-boolean v2, v2, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v2, :cond_135

    invoke-virtual {v13, v4}, Lcom/estrongs/android/pop/d/p;->d(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v13, v4}, Lcom/estrongs/android/pop/d/p;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iget v2, v1, Lcom/estrongs/android/pop/d/e;->s:I

    new-array v6, v2, [B

    iget-object v1, v1, Lcom/estrongs/android/pop/d/e;->r:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_ec
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-nez v15, :cond_102

    const/4 v1, 0x0

    :goto_f3
    if-nez v1, :cond_135

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/cf;->a(J)V

    move v2, v8

    move v3, v9

    move v4, v10

    goto :goto_c2

    :cond_102
    array-length v15, v14

    if-lt v1, v15, :cond_107

    move v1, v2

    goto :goto_f3

    :cond_107
    :try_start_107
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-gtz v17, :cond_11e

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_118} :catch_118

    :catch_118
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    goto :goto_f3

    :cond_11e
    long-to-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a([BI)Ljava/lang/String;

    move-result-object v17

    aget-object v18, v14, v1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_131

    move v1, v2

    goto :goto_f3

    :cond_131
    sub-long/2addr v11, v15

    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :cond_135
    if-nez v8, :cond_14b

    new-instance v1, Lcom/estrongs/android/pop/app/ca;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    invoke-direct {v1, v2, v8, v9, v4}, Lcom/estrongs/android/pop/app/ca;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;JLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ca;->a()Z

    iget-boolean v9, v1, Lcom/estrongs/android/pop/app/ca;->f:Z

    iget-boolean v8, v1, Lcom/estrongs/android/pop/app/ca;->c:Z

    :cond_14b
    if-eqz v9, :cond_15e

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/android/pop/app/cf;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    move v2, v8

    move v3, v9

    move v4, v10

    goto/16 :goto_c2

    :cond_15e
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/cf;->a(J)V

    move v2, v8

    move v3, v9

    move v4, v10

    goto/16 :goto_c2

    :cond_16c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/estrongs/android/pop/app/cf;->c:J

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/android/pop/app/cf;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    move v2, v8

    move v3, v9

    move v4, v10

    goto/16 :goto_c2

    :cond_17d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cf;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0902e1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/cf;->a(Ljava/lang/String;)V

    goto/16 :goto_4c
.end method
