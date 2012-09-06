.class final Lcom/google/android/youtube/app/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/c/c;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/app/c/f;->a:Lcom/google/android/youtube/app/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/c/f;->a:Lcom/google/android/youtube/app/c/c;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/c/c;->a(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/c/f;->a:Lcom/google/android/youtube/app/c/c;

    invoke-static {v0}, Lcom/google/android/youtube/app/c/c;->a(Lcom/google/android/youtube/app/c/c;)V

    .line 100
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/c/f;->a:Lcom/google/android/youtube/app/c/c;

    invoke-static {v0}, Lcom/google/android/youtube/app/c/c;->a(Lcom/google/android/youtube/app/c/c;)V

    .line 97
    return-void
.end method
