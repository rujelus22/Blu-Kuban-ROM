.class Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "UALService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/userlogging/UALService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/userlogging/UALService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/userlogging/UALService;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/userlogging/UALService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;-><init>(Lcom/vlingo/client/userlogging/UALService;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #calls: Lcom/vlingo/client/userlogging/UALService;->stopServiceIfdone()V
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$600(Lcom/vlingo/client/userlogging/UALService;)V

    .line 139
    return-void
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 6
    .parameter "request"
    .parameter "onDemandResponse"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    monitor-enter v1

    .line 111
    :try_start_3
    iget v0, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2c

    .line 117
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #getter for: Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$400(Lcom/vlingo/client/userlogging/UALService;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    if-ne v0, p1, :cond_17

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/userlogging/UALService;->userLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-static {v0, v2}, Lcom/vlingo/client/userlogging/UALService;->access$402(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 122
    :cond_17
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #getter for: Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$500(Lcom/vlingo/client/userlogging/UALService;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    if-ne v0, p1, :cond_25

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/userlogging/UALService;->eventLogRequest:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-static {v0, v2}, Lcom/vlingo/client/userlogging/UALService;->access$502(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 128
    :cond_25
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$HttpCallbackImpl;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #calls: Lcom/vlingo/client/userlogging/UALService;->stopServiceIfdone()V
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$600(Lcom/vlingo/client/userlogging/UALService;)V

    .line 130
    monitor-exit v1

    .line 135
    :goto_2b
    return-void

    .line 133
    :cond_2c
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/HttpRequest;->markRetry()V

    .line 134
    monitor-exit v1

    goto :goto_2b

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method
