.class final Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->requestNewCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .registers 7

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->getInstance()Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getStreamLength()I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_35

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->theCookie:J
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$002(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;J)J

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->mustRequestNewCookie:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$102(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;Z)Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_54
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_3d

    :goto_28
    :try_start_28
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$202(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;Z)Z

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->persistInternalState()V
    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$300(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;)V

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_51

    return-void

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->theCookie:J
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$002(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;J)J
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_54
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_28

    :catch_3d
    move-exception v1

    :try_start_3e
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->theCookie:J
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$002(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;J)J
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_54

    :try_start_45
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$202(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;Z)Z

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->persistInternalState()V
    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$300(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;)V

    goto :goto_33

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw v1

    :catchall_54
    move-exception v1

    :try_start_55
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$202(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;Z)Z

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    #calls: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->persistInternalState()V
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$300(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;)V

    throw v1
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_51
.end method

.method public requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 6

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->getInstance()Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;->access$202(Lcom/google/android/apps/uploader/googlemobile/masf/services/CookieService;Z)Z

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
