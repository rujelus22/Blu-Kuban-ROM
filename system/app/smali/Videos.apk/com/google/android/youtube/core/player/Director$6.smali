.class Lcom/google/android/youtube/core/player/Director$6;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter "userAuth"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #setter for: Lcom/google/android/youtube/core/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    invoke-static {v0, p1}, Lcom/google/android/youtube/core/player/Director;->access$202(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 953
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$500(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/client/GDataClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->getPlaylistUri()Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/Director;->access$1300(Lcom/google/android/youtube/core/player/Director;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/Director;->access$1400(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestMyPlaylistVideos(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 956
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 962
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$600(Lcom/google/android/youtube/core/player/Director;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 964
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$6;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$600(Lcom/google/android/youtube/core/player/Director;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 960
    return-void
.end method
