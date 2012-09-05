.class final Lcom/google/android/youtube/app/ui/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cv;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/cv;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cv;->b(Lcom/google/android/youtube/app/ui/cv;)V

    .line 338
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cw;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cv;->b(Lcom/google/android/youtube/app/ui/cv;)V

    .line 335
    return-void
.end method
