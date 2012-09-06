.class final Lcom/dropbox/android/service/m;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/r;

.field final synthetic b:Lcom/dropbox/android/service/h;

.field final synthetic c:Ldbxyzptlk/j/m;

.field final synthetic d:Lcom/dropbox/android/service/l;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/l;Lcom/dropbox/android/service/r;Lcom/dropbox/android/service/h;Ldbxyzptlk/j/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/dropbox/android/service/m;->d:Lcom/dropbox/android/service/l;

    iput-object p2, p0, Lcom/dropbox/android/service/m;->a:Lcom/dropbox/android/service/r;

    iput-object p3, p0, Lcom/dropbox/android/service/m;->b:Lcom/dropbox/android/service/h;

    iput-object p4, p0, Lcom/dropbox/android/service/m;->c:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-object v0, p0, Lcom/dropbox/android/service/m;->a:Lcom/dropbox/android/service/r;

    iget-object v1, p0, Lcom/dropbox/android/service/m;->b:Lcom/dropbox/android/service/h;

    invoke-virtual {v1}, Lcom/dropbox/android/service/h;->b()Lcom/dropbox/android/service/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/r;->a(Lcom/dropbox/android/service/f;)V

    .line 926
    iget-object v0, p0, Lcom/dropbox/android/service/m;->c:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->g()Z

    move-result v0

    if-nez v0, :cond_19

    .line 927
    iget-object v0, p0, Lcom/dropbox/android/service/m;->c:Ldbxyzptlk/j/m;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->b(Z)V

    .line 930
    :cond_19
    iget-object v0, p0, Lcom/dropbox/android/service/m;->d:Lcom/dropbox/android/service/l;

    invoke-static {v0}, Lcom/dropbox/android/service/l;->a(Lcom/dropbox/android/service/l;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/dropbox/android/service/m;->c:Ldbxyzptlk/j/m;

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->n()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 931
    iget-object v0, p0, Lcom/dropbox/android/service/m;->c:Ldbxyzptlk/j/m;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->d(Z)V

    .line 933
    :cond_2e
    return-void
.end method
