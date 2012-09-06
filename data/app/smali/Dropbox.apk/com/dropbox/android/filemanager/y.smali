.class final Lcom/dropbox/android/filemanager/y;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/j;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/v;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/v;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/dropbox/android/filemanager/y;->a:Lcom/dropbox/android/filemanager/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/k;)V
    .registers 6
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->e()Ldbxyzptlk/i/i;

    move-result-object v1

    .line 286
    instance-of v0, p1, Lcom/dropbox/android/taskqueue/ExportTask;

    if-eqz v0, :cond_25

    new-instance v0, Ldbxyzptlk/i/d;

    invoke-direct {v0}, Ldbxyzptlk/i/d;-><init>()V

    .line 289
    :goto_d
    iget-object v2, p0, Lcom/dropbox/android/filemanager/y;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v2}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 290
    new-instance v2, Lcom/dropbox/android/filemanager/z;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/y;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/dropbox/android/filemanager/z;-><init>(Ldbxyzptlk/i/g;Ldbxyzptlk/i/j;)V

    .line 292
    :try_start_21
    invoke-virtual {p1, v2}, Lcom/dropbox/android/taskqueue/k;->a(Lcom/dropbox/android/taskqueue/l;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_2b

    .line 297
    return-void

    .line 286
    :cond_25
    new-instance v0, Ldbxyzptlk/i/c;

    invoke-direct {v0}, Ldbxyzptlk/i/c;-><init>()V

    goto :goto_d

    .line 293
    :catch_2b
    move-exception v2

    .line 294
    iget-object v3, p0, Lcom/dropbox/android/filemanager/y;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 295
    throw v2
.end method
