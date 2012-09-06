.class final Lcom/dropbox/android/service/p;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/LinkedList;

.field final synthetic b:Ldbxyzptlk/j/m;

.field final synthetic c:Z

.field final synthetic d:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/dropbox/android/service/o;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/o;Ljava/util/LinkedList;Ldbxyzptlk/j/m;ZLandroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iput-object p2, p0, Lcom/dropbox/android/service/p;->a:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    iput-boolean p4, p0, Lcom/dropbox/android/service/p;->c:Z

    iput-object p5, p0, Lcom/dropbox/android/service/p;->d:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p6, p0, Lcom/dropbox/android/service/p;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 802
    iget-object v0, p0, Lcom/dropbox/android/service/p;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 803
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v0, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->d(Lcom/dropbox/android/service/CameraUploadService;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 805
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0, v8}, Ldbxyzptlk/j/m;->c(Z)V

    .line 806
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->c()V

    .line 846
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/dropbox/android/service/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 847
    iget-object v0, p0, Lcom/dropbox/android/service/p;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/dropbox/android/service/p;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/CameraUploadService;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 850
    :cond_3d
    iget-boolean v0, p0, Lcom/dropbox/android/service/p;->c:Z

    if-eqz v0, :cond_46

    .line 852
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0, v8}, Ldbxyzptlk/j/m;->h(Z)V

    .line 855
    :cond_46
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->o()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 856
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0, v8}, Ldbxyzptlk/j/m;->e(Z)V

    .line 858
    :cond_53
    return-void

    .line 810
    :cond_54
    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->h()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v0, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->d(Lcom/dropbox/android/service/CameraUploadService;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 811
    iget-object v0, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v0, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0, v5}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Z)Z

    .line 820
    :cond_6d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 821
    iget-object v0, p0, Lcom/dropbox/android/service/p;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_77
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/h;

    .line 822
    invoke-static {v0}, Lcom/dropbox/android/service/h;->a(Lcom/dropbox/android/service/h;)J

    move-result-wide v9

    cmp-long v7, v9, v1

    if-lez v7, :cond_d6

    .line 823
    invoke-static {v0}, Lcom/dropbox/android/service/h;->a(Lcom/dropbox/android/service/h;)J

    move-result-wide v9

    sub-long v9, v3, v9

    .line 824
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->b()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-gez v0, :cond_77

    .line 825
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->b()J

    move-result-wide v0

    move-wide v6, v0

    .line 839
    :goto_9e
    iget-object v0, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v0, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->f(Lcom/dropbox/android/service/CameraUploadService;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 840
    iget-boolean v0, p0, Lcom/dropbox/android/service/p;->c:Z

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/dropbox/android/service/p;->b:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->o()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 841
    :goto_b4
    new-instance v0, Lcom/dropbox/android/service/l;

    iget-object v1, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v1, v1, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    iget-object v2, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v2, v2, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->g(Lcom/dropbox/android/service/CameraUploadService;)I

    move-result v2

    iget-object v3, p0, Lcom/dropbox/android/service/p;->a:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/dropbox/android/service/p;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/service/l;-><init>(Lcom/dropbox/android/service/CameraUploadService;ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 842
    iget-object v1, p0, Lcom/dropbox/android/service/p;->f:Lcom/dropbox/android/service/o;

    iget-object v1, v1, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v1}, Lcom/dropbox/android/service/CameraUploadService;->h(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_2e

    .line 829
    :cond_d6
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->b()J

    move-result-wide v0

    move-wide v6, v0

    .line 830
    goto :goto_9e

    :cond_dc
    move v5, v8

    .line 840
    goto :goto_b4

    :cond_de
    move-wide v6, v1

    goto :goto_9e
.end method
