.class final Lcom/google/android/youtube/core/async/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/google/android/youtube/core/async/bb;->b:Landroid/app/Activity;

    .line 454
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/bb;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 458
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    .line 466
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/youtube/core/async/bb;->a:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()V

    .line 462
    return-void
.end method
