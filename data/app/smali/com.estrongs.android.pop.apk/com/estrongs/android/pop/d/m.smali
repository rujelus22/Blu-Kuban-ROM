.class public Lcom/estrongs/android/pop/d/m;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field private b:Lcom/estrongs/android/pop/d/n;

.field private c:Lcom/estrongs/android/pop/d/p;

.field private d:Lcom/estrongs/android/pop/d/q;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/d/n;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/m;->d:Lcom/estrongs/android/pop/d/q;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/d/m;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/d/m;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/d/n;->b()Lcom/estrongs/android/pop/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    iput p2, p0, Lcom/estrongs/android/pop/d/m;->e:I

    iget-object v0, p1, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/m;->d:Lcom/estrongs/android/pop/d/q;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/d/m;->a:Z

    if-nez v0, :cond_10

    const-string v0, "GlobalLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "RequestEventHandler thread exit successfully"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v0, "GlobalLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestEventHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/pop/d/m;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is waiting to pop request..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :try_start_30
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget v1, p0, Lcom/estrongs/android/pop/d/m;->e:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/n;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/l;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_3a} :catch_7e

    const-string v1, "GlobalLogger"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestEventHandler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/estrongs/android/pop/d/m;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pop request successfully"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->c()I

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->a()I

    move-result v5

    packed-switch v5, :pswitch_data_396

    move-object v0, v7

    :goto_76
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/d/n;->a(Lcom/estrongs/android/pop/d/o;)V

    goto :goto_0

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_84
    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_86
    iget-object v6, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const/4 v7, 0x1

    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/l;->b:Z

    invoke-virtual {v6, v3, v7, v0}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_a3

    move-result-object v0

    move-object v6, v0

    move-object v7, v8

    move v0, v4

    :goto_92
    if-eqz v6, :cond_a9

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10001

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/d/o;->b(Ljava/util/Map;)V

    goto :goto_76

    :catch_a3
    move-exception v0

    const/4 v4, 0x1

    move-object v6, v5

    move-object v7, v0

    move v0, v4

    goto :goto_92

    :cond_a9
    if-eqz v0, :cond_c3

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10001

    const v5, 0x30005

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/d/o;->a(Ljava/lang/Throwable;)V

    :goto_b9
    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    goto :goto_76

    :cond_c3
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10001

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto :goto_b9

    :pswitch_cf
    iget-object v4, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/l;->d()Z

    move-result v0

    invoke-virtual {v4, v3, v0}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e7

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10002

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto :goto_76

    :cond_e7
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10002

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    goto/16 :goto_76

    :pswitch_fd
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10009

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_112
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10009

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    goto/16 :goto_76

    :pswitch_128
    if-nez v3, :cond_1a1

    iget-object v0, v0, Lcom/estrongs/android/pop/d/l;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/Vector;

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    move v14, v0

    move v0, v4

    move v4, v14

    :goto_135
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v4, v8, :cond_151

    if-eqz v0, :cond_182

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v4, 0x10003

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_151
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_16d

    const/4 v0, -0x1

    move v8, v0

    :goto_15b
    iget-object v9, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-long v10, v8

    invoke-virtual {v9, v0, v10, v11}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z

    move-result v8

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v8

    goto :goto_135

    :cond_16d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    const-wide/16 v12, 0x3e8

    cmp-long v0, v10, v12

    if-lez v0, :cond_180

    const/4 v0, -0x1

    :goto_17a
    const/4 v10, -0x1

    if-ne v0, v10, :cond_392

    move-wide v6, v8

    move v8, v0

    goto :goto_15b

    :cond_180
    const/4 v0, 0x0

    goto :goto_17a

    :cond_182
    new-instance v4, Lcom/estrongs/android/pop/d/o;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const v8, 0x10003

    const v9, 0x30003

    move-wide v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_76

    :cond_1a1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1b8

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10003

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_1b8
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10003

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    goto/16 :goto_76

    :pswitch_1ce
    iget-object v4, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v7, -0x1

    iget-boolean v9, v0, Lcom/estrongs/android/pop/d/l;->c:Z

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    if-eqz v0, :cond_22c

    invoke-static {v6}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20a

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/e/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/e/a;->b(Ljava/lang/String;)V

    :cond_20a
    invoke-static {v6}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_219

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    :cond_219
    new-instance v7, Lcom/estrongs/android/pop/d/o;

    const v11, 0x10004

    const v12, 0x30002

    move-wide v8, v1

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v7, v3}, Lcom/estrongs/android/pop/d/o;->a(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_76

    :cond_22c
    new-instance v7, Lcom/estrongs/android/pop/d/o;

    const v11, 0x10004

    const v12, 0x30003

    move-wide v8, v1

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    sget-boolean v0, Lcom/estrongs/android/pop/d/p;->a:Z

    if-eqz v0, :cond_248

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/d/p;->a:Z

    const-string v0, "\u5fae\u76d8\u4e0a\u4f20\u5927\u5c0f\u9650\u5236(\u5355\u4e2a\u6587\u4ef6<10M)"

    :cond_242
    :goto_242
    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_76

    :cond_248
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_242

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_242

    :pswitch_257
    iget-object v4, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v7, -0x1

    iget-boolean v9, v0, Lcom/estrongs/android/pop/d/l;->c:Z

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    if-eqz v0, :cond_2b5

    invoke-static {v6}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_293

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/e/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_293

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/e/a;->b(Ljava/lang/String;)V

    :cond_293
    invoke-static {v6}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->b:Lcom/estrongs/android/pop/d/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    :cond_2a2
    new-instance v7, Lcom/estrongs/android/pop/d/o;

    const v11, 0x10005

    const v12, 0x30002

    move-wide v8, v1

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v7, v3}, Lcom/estrongs/android/pop/d/o;->a(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_76

    :cond_2b5
    new-instance v7, Lcom/estrongs/android/pop/d/o;

    const v11, 0x10005

    const v12, 0x30003

    move-wide v8, v1

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    sget-boolean v0, Lcom/estrongs/android/pop/d/p;->a:Z

    if-eqz v0, :cond_2d1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/d/p;->a:Z

    const-string v0, "\u5fae\u76d8\u4e0a\u4f20\u5927\u5c0f\u9650\u5236(\u5355\u4e2a\u6587\u4ef6<10M)"

    :cond_2cb
    :goto_2cb
    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_76

    :cond_2d1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2cb

    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2cb

    :pswitch_2e0
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3, v6}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10006

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_2f5
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10006

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/o;->b(Ljava/lang/String;)V

    goto/16 :goto_76

    :pswitch_30b
    iget-object v4, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_327

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10008

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/d/o;->a(Ljava/util/Map;)V

    goto/16 :goto_76

    :cond_327
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x10008

    const v5, 0x30004

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :pswitch_334
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/d/p;->a(J)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_34e

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x1000c

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/d/o;->a(Ljava/util/Map;)V

    goto/16 :goto_76

    :cond_34e
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x1000c

    const v5, 0x30004

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :pswitch_35b
    move-object v0, v7

    goto/16 :goto_76

    :pswitch_35e
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/p;->a()V

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x1000b

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :pswitch_370
    iget-object v0, p0, Lcom/estrongs/android/pop/d/m;->c:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_385

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x1000a

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_385
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const v4, 0x1000a

    const v5, 0x30003

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    goto/16 :goto_76

    :cond_392
    move v8, v0

    goto/16 :goto_15b

    nop

    :pswitch_data_396
    .packed-switch 0x10001
        :pswitch_84
        :pswitch_cf
        :pswitch_128
        :pswitch_1ce
        :pswitch_257
        :pswitch_2e0
        :pswitch_35b
        :pswitch_30b
        :pswitch_fd
        :pswitch_370
        :pswitch_35e
        :pswitch_334
    .end packed-switch
.end method
