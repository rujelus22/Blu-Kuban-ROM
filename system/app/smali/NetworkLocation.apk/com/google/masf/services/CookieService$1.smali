.class final Lcom/google/masf/services/CookieService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/services/CookieService;->requestNewCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/services/CookieService;


# direct methods
.method constructor <init>(Lcom/google/masf/services/CookieService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .registers 9

    invoke-static {}, Lcom/google/masf/services/CookieService;->getInstance()Lcom/google/masf/services/CookieService;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStreamLength()I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_45

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    #setter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v0, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z
    invoke-static {v0, v2}, Lcom/google/masf/services/CookieService;->access$102(Lcom/google/masf/services/CookieService;Z)Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_74
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_4d

    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v0, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #calls: Lcom/google/masf/services/CookieService;->persistInternalState()V
    invoke-static {v0}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #getter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v3}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_71

    return-void

    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v0, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_74
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_28

    :catch_4d
    move-exception v0

    :try_start_4e
    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v0, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_74

    :try_start_55
    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v0, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #calls: Lcom/google/masf/services/CookieService;->persistInternalState()V
    invoke-static {v0}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #getter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v3}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_43

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_55 .. :try_end_73} :catchall_71

    throw v0

    :catchall_74
    move-exception v0

    :try_start_75
    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v3, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v2, v3}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #calls: Lcom/google/masf/services/CookieService;->persistInternalState()V
    invoke-static {v2}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    #getter for: Lcom/google/masf/services/CookieService;->theCookie:J
    invoke-static {v4}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    throw v0
    :try_end_91
    .catchall {:try_start_75 .. :try_end_91} :catchall_71
.end method

.method public requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 6

    invoke-static {}, Lcom/google/masf/services/CookieService;->getInstance()Lcom/google/masf/services/CookieService;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    #setter for: Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z
    invoke-static {v0, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method
