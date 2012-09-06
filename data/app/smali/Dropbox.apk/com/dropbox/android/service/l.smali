.class final Lcom/dropbox/android/service/l;
.super Lcom/dropbox/android/service/g;
.source "panda.py"


# instance fields
.field final synthetic b:Lcom/dropbox/android/service/CameraUploadService;

.field private final c:Ljava/util/List;

.field private final d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/android/service/CameraUploadService;ILjava/util/List;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/dropbox/android/service/l;->b:Lcom/dropbox/android/service/CameraUploadService;

    .line 893
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/service/g;-><init>(Lcom/dropbox/android/service/CameraUploadService;I)V

    .line 894
    iput-object p3, p0, Lcom/dropbox/android/service/l;->c:Ljava/util/List;

    .line 895
    iput-object p4, p0, Lcom/dropbox/android/service/l;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 896
    iput-boolean p5, p0, Lcom/dropbox/android/service/l;->e:Z

    .line 897
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/l;)Z
    .registers 2
    .parameter

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/dropbox/android/service/l;->e:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 901
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 902
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    .line 903
    new-instance v2, Lcom/dropbox/android/service/r;

    iget-object v0, p0, Lcom/dropbox/android/service/l;->b:Lcom/dropbox/android/service/CameraUploadService;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/dropbox/android/service/r;-><init>(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/b;)V

    .line 905
    iget-object v0, p0, Lcom/dropbox/android/service/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/h;

    .line 906
    invoke-virtual {v0}, Lcom/dropbox/android/service/h;->a()V

    .line 907
    invoke-static {v0}, Lcom/dropbox/android/service/h;->b(Lcom/dropbox/android/service/h;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 912
    iget-object v4, p0, Lcom/dropbox/android/service/l;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Lcom/dropbox/android/service/h;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 914
    iget-object v4, p0, Lcom/dropbox/android/service/l;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Lcom/dropbox/android/service/h;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1b

    .line 917
    :cond_3e
    iget-object v4, p0, Lcom/dropbox/android/service/l;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Lcom/dropbox/android/service/h;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 920
    new-instance v4, Lcom/dropbox/android/service/m;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/dropbox/android/service/m;-><init>(Lcom/dropbox/android/service/l;Lcom/dropbox/android/service/r;Lcom/dropbox/android/service/h;Ldbxyzptlk/j/m;)V

    invoke-virtual {p0, v4}, Lcom/dropbox/android/service/l;->a(Ljava/lang/Runnable;)V

    .line 936
    iget-object v0, p0, Lcom/dropbox/android/service/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_1b

    .line 939
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1b

    .line 943
    :cond_58
    new-instance v0, Lcom/dropbox/android/service/n;

    invoke-direct {v0, p0, v2}, Lcom/dropbox/android/service/n;-><init>(Lcom/dropbox/android/service/l;Lcom/dropbox/android/service/r;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/android/service/l;->a(Ljava/lang/Runnable;)V

    .line 950
    iget-object v0, p0, Lcom/dropbox/android/service/l;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0, v5}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Z)Z

    .line 951
    invoke-virtual {v1, v5}, Ldbxyzptlk/j/m;->c(Z)V

    .line 952
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->c()V

    .line 954
    invoke-static {v0}, Lcom/dropbox/android/util/M;->a(Lcom/dropbox/android/taskqueue/G;)V

    .line 955
    return-void
.end method
