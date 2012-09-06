.class final Lcom/dropbox/android/filemanager/A;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/U;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/v;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/filemanager/v;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/dropbox/android/filemanager/A;->a:Lcom/dropbox/android/filemanager/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/filemanager/v;Lcom/dropbox/android/filemanager/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/A;-><init>(Lcom/dropbox/android/filemanager/v;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 859
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 846
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/k;->e()Ldbxyzptlk/i/i;

    move-result-object v0

    .line 847
    new-instance v1, Ldbxyzptlk/i/k;

    invoke-direct {v1}, Ldbxyzptlk/i/k;-><init>()V

    .line 848
    iget-object v2, p0, Lcom/dropbox/android/filemanager/A;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v2}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 849
    new-instance v2, Lcom/dropbox/android/filemanager/z;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/A;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/dropbox/android/filemanager/z;-><init>(Ldbxyzptlk/i/g;Ldbxyzptlk/i/j;)V

    .line 851
    :try_start_1d
    invoke-virtual {p2, v2}, Lcom/dropbox/android/taskqueue/k;->a(Lcom/dropbox/android/taskqueue/l;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_21

    .line 856
    return-void

    .line 852
    :catch_21
    move-exception v2

    .line 853
    iget-object v3, p0, Lcom/dropbox/android/filemanager/A;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 854
    throw v2
.end method

.method public final declared-synchronized b(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 862
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
