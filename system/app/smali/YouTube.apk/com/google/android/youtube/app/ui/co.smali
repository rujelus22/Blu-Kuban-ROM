.class final Lcom/google/android/youtube/app/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/cj;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/co;->b:Ljava/lang/String;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/cj;Ljava/lang/String;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/co;-><init>(Lcom/google/android/youtube/app/ui/cj;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->e(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/co;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/cj;->d(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 212
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 206
    const-string v0, "Error while authenticating"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->e(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/co;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/cj;->d(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 208
    return-void
.end method

.method public final e_()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->e(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/co;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/co;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/cj;->d(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 203
    return-void
.end method
