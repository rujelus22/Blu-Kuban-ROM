.class final Lcom/google/android/youtube/app/ui/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/z;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dn;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Playlist;)V
    .registers 6
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dn;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dn;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/ui/dr;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dn;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {v2, v3, p1}, Lcom/google/android/youtube/app/ui/dr;-><init>(Lcom/google/android/youtube/app/ui/dm;Lcom/google/android/youtube/core/model/Playlist;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 276
    return-void
.end method
