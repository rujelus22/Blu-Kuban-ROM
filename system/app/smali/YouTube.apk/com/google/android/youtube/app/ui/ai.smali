.class final Lcom/google/android/youtube/app/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/aa;

.field private final b:Lcom/google/android/youtube/app/i;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/aa;Lcom/google/android/youtube/app/i;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ai;->c:Ljava/lang/String;

    .line 315
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ai;->b:Lcom/google/android/youtube/app/i;

    .line 316
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aa;->dismiss()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->j(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "UsernameCreationError"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->b:Lcom/google/android/youtube/app/i;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aa;->dismiss()V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->j(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "UsernameCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ai;->b:Lcom/google/android/youtube/app/i;

    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/aa;->k(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ai;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/aa;->k(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ai;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v5}, Lcom/google/android/youtube/app/ui/aa;->k(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method
