.class final Lcom/google/android/youtube/app/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cm;Lcom/google/android/youtube/app/ui/ch;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->b(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 515
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/ui/cm;->a(Lcom/google/android/youtube/app/ui/cm;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->d(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/a/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/a/o;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->d(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/a/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/a/o;->a(Lcom/google/android/a/e/c;)V

    :goto_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->d(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/a/o;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->e(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/core/ui/PagedListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedListView;->b()V

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cm;->d(Lcom/google/android/youtube/app/ui/cm;)Lcom/google/android/youtube/app/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/co;->b:Lcom/google/android/youtube/app/ui/cm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/cm;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ch;->l(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/app/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/a/o;->a(Lcom/google/android/a/e/c;)V

    goto :goto_2a
.end method
