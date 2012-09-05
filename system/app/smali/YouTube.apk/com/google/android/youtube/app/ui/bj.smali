.class final Lcom/google/android/youtube/app/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bc;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/app/ui/bj;-><init>(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/bc;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bj;->b:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/bj;->c:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 227
    const-string v0, "Error loading existing screens"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 227
    check-cast p2, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bj;->b:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->d(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/e;->a(I)V

    :goto_2d
    return-void

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->f(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/app/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bj;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/a/e/a;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bj;->c:Ljava/lang/String;

    const-string v4, "\\D"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/a/e/a;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bj;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/bc;->e(Lcom/google/android/youtube/app/ui/bc;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/u;->a(Ljava/lang/String;Lcom/google/android/a/e/a;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_2d
.end method
