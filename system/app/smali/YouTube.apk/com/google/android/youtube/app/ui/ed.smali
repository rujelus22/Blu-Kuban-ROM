.class final Lcom/google/android/youtube/app/ui/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ec;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ec;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ed;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ed;->a:Lcom/google/android/youtube/app/ui/ec;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/app/ui/ec;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ed;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ec;->b(Lcom/google/android/youtube/app/ui/ec;)V

    .line 340
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ed;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ec;->b(Lcom/google/android/youtube/app/ui/ec;)V

    .line 337
    return-void
.end method
