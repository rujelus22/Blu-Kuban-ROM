.class final Lcom/google/android/youtube/app/ui/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/t;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ch;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ch;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ci;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 6
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ci;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ch;->a(Lcom/google/android/youtube/app/ui/ch;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ci;->a:Lcom/google/android/youtube/app/ui/ch;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ch;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/cl;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ci;->a:Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {v2, v3, p1}, Lcom/google/android/youtube/app/ui/cl;-><init>(Lcom/google/android/youtube/app/ui/ch;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 245
    return-void
.end method
