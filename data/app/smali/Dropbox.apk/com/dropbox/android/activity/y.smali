.class final Lcom/dropbox/android/activity/y;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/CameraUploadGridFragment;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    .line 296
    invoke-direct {p0, p2}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/dropbox/android/activity/y;->e()V

    .line 298
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 293
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/y;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;
    .registers 27
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v12

    .line 303
    invoke-virtual {v12}, Ldbxyzptlk/j/m;->w()Ljava/lang/String;

    move-result-object v10

    .line 305
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v3

    iget-object v13, v3, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    .line 307
    const-wide/16 v8, 0x0

    .line 308
    const-wide/16 v6, 0x0

    .line 309
    const-wide/16 v4, 0x0

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 312
    const/4 v3, 0x1

    move-object v11, v10

    move-wide/from16 v20, v8

    move-wide/from16 v9, v20

    move-wide/from16 v22, v6

    move-wide/from16 v7, v22

    .line 313
    :goto_22
    if-eqz v3, :cond_91

    .line 315
    invoke-virtual {v13, v11}, Ldbxyzptlk/p/i;->i(Ljava/lang/String;)Ldbxyzptlk/l/g;

    move-result-object v16

    .line 316
    const-wide/16 v17, 0x1

    add-long v5, v4, v17

    .line 317
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 319
    move-object/from16 v0, v16

    iget-object v3, v0, Ldbxyzptlk/l/g;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldbxyzptlk/l/e;

    .line 320
    iget-object v4, v3, Ldbxyzptlk/l/e;->b:Ljava/lang/Object;

    if-eqz v4, :cond_5e

    iget-object v4, v3, Ldbxyzptlk/l/e;->b:Ljava/lang/Object;

    check-cast v4, Ldbxyzptlk/p/m;

    iget-object v4, v4, Ldbxyzptlk/p/m;->a:Ldbxyzptlk/l/k;

    if-eqz v4, :cond_5e

    .line 321
    iget-object v3, v3, Ldbxyzptlk/l/e;->b:Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 323
    :cond_5e
    iget-object v3, v3, Ldbxyzptlk/l/e;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 326
    :cond_66
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v9, v3

    .line 327
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v7, v3

    .line 332
    if-nez v11, :cond_8f

    const/4 v3, 0x1

    .line 333
    :goto_75
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/provider/CameraUploadsProvider;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 335
    move-object/from16 v0, v16

    iget-boolean v3, v0, Ldbxyzptlk/l/g;->d:Z

    .line 336
    move-object/from16 v0, v16

    iget-object v4, v0, Ldbxyzptlk/l/g;->b:Ljava/lang/String;

    .line 339
    invoke-virtual {v12, v4}, Ldbxyzptlk/j/m;->b(Ljava/lang/String;)V

    move-object v11, v4

    move-wide/from16 v20, v5

    move-wide/from16 v4, v20

    .line 340
    goto :goto_22

    .line 332
    :cond_8f
    const/4 v3, 0x0

    goto :goto_75

    .line 342
    :cond_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 343
    invoke-static {}, Lcom/dropbox/android/util/h;->F()Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v6, "added"

    invoke-virtual {v3, v6, v9, v10}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v6, "removed"

    invoke-virtual {v3, v6, v7, v8}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v6, "pages"

    invoke-virtual {v3, v6, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v4, "dur"

    sub-long v5, v11, v14

    invoke-virtual {v3, v4, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    sget-object v4, Lcom/dropbox/android/activity/x;->d:Lcom/dropbox/android/activity/x;

    invoke-static {v3, v4}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Lcom/dropbox/android/activity/CameraUploadGridFragment;Lcom/dropbox/android/activity/x;)Lcom/dropbox/android/activity/x;

    .line 347
    const/4 v3, 0x0

    return-object v3
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 353
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 355
    :cond_12
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 367
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 369
    :cond_12
    invoke-static {}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateTask error"

    invoke-static {v0, v1, p2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    instance-of v0, p2, Ldbxyzptlk/m/a;

    if-nez v0, :cond_25

    .line 371
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 374
    :cond_25
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    sget-object v1, Lcom/dropbox/android/activity/x;->c:Lcom/dropbox/android/activity/x;

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Lcom/dropbox/android/activity/CameraUploadGridFragment;Lcom/dropbox/android/activity/x;)Lcom/dropbox/android/activity/x;

    .line 376
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->b(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V

    .line 377
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/y;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 360
    iget-object v0, p0, Lcom/dropbox/android/activity/y;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 362
    :cond_12
    return-void
.end method
