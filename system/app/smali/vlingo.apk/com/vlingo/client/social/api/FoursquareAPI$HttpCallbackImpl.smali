.class Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "FoursquareAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FoursquareAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCallbackImpl"
.end annotation


# instance fields
.field private final methodSig:I

.field final synthetic this$0:Lcom/vlingo/client/social/api/FoursquareAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/FoursquareAPI;I)V
    .registers 3
    .parameter
    .parameter "sig"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 344
    iput p2, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->methodSig:I

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/FoursquareAPI;ILcom/vlingo/client/social/api/FoursquareAPI$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;-><init>(Lcom/vlingo/client/social/api/FoursquareAPI;I)V

    return-void
.end method

.method private getErrorCode(I)Ljava/lang/String;
    .registers 4
    .parameter "responseCode"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occured talking to the Foursquare server.  Please try again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->getErrorCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getErrorCode(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "responseCode"
    .parameter "defaultMessage"

    .prologue
    const/16 v1, 0x1f4

    .line 373
    if-lt p1, v1, :cond_22

    const/16 v0, 0x258

    if-gt p1, v0, :cond_22

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Foursquare servers are busy.  Please try again. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 380
    .end local p2
    :cond_21
    :goto_21
    return-object p2

    .line 376
    .restart local p2
    :cond_22
    const/16 v0, 0x190

    if-lt p1, v0, :cond_21

    if-gt p1, v1, :cond_21

    .line 377
    const-string p2, "Invalid username and password combination."

    goto :goto_21
.end method


# virtual methods
.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$100(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 366
    :goto_8
    return-void

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "Request failed. Please try again"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->methodSig:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_1b
    goto :goto_8

    .line 362
    :pswitch_1c
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onLoginResult(ZLjava/util/Hashtable;)V

    goto :goto_8

    .line 356
    nop

    :pswitch_data_2e
    .packed-switch 0x1389
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 11
    .parameter "request"
    .parameter "response"

    .prologue
    const/16 v4, 0xc8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 385
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$100(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v3

    if-eq v3, p1, :cond_d

    .line 448
    :goto_c
    return-void

    .line 391
    :cond_d
    iget v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->methodSig:I

    packed-switch v3, :pswitch_data_166

    :pswitch_12
    goto :goto_c

    .line 393
    :pswitch_13
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    if-ne v3, v4, :cond_50

    .line 394
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, responseData:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "name"

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->assembleName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "photo"

    const-string v5, "photo"

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->extractXMLElementBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->saveAuthentication()V
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$600(Lcom/vlingo/client/social/api/FoursquareAPI;)V

    .line 398
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onLoginResult(ZLjava/util/Hashtable;)V

    goto :goto_c

    .line 401
    .end local v1           #responseData:Ljava/lang/String;
    :cond_50
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "error"

    iget v5, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    invoke-direct {p0, v5}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->getErrorCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onLoginResult(ZLjava/util/Hashtable;)V

    goto :goto_c

    .line 408
    :pswitch_71
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    if-ne v3, v4, :cond_95

    .line 409
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .restart local v1       #responseData:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "resp"

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onCheckinResult(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 414
    .end local v1           #responseData:Ljava/lang/String;
    :cond_95
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "error"

    iget v5, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    invoke-direct {p0, v5}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->getErrorCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onCheckinResult(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 420
    :pswitch_b7
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    if-ne v3, v4, :cond_ea

    .line 421
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1       #responseData:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "resp"

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {v1}, Lcom/vlingo/client/social/api/FoursquareCheckin;->getCheckins(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 424
    .local v0, checkins:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/social/api/FoursquareCheckin;>;"
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "checkins"

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onFriendList(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 428
    .end local v0           #checkins:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/social/api/FoursquareCheckin;>;"
    .end local v1           #responseData:Ljava/lang/String;
    :cond_ea
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "error"

    iget v5, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const-string v6, "An error occured finding your friends. Please try logging out and back in to Foursquare."

    invoke-direct {p0, v5, v6}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->getErrorCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onFriendList(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 434
    :pswitch_10e
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    if-ne v3, v4, :cond_141

    .line 435
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .restart local v1       #responseData:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "resp"

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-static {v1}, Lcom/vlingo/client/social/api/FoursquareVenue;->getVenues(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 438
    .local v2, venues:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/social/api/FoursquareVenue;>;"
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "venues"

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onVenueList(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 442
    .end local v1           #responseData:Ljava/lang/String;
    .end local v2           #venues:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/social/api/FoursquareVenue;>;"
    :cond_141
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v3

    const-string v4, "error"

    iget v5, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const-string v6, "An error occured finding nearby places. Please try logging out and back in to Foursquare."

    invoke-direct {p0, v5, v6}, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->getErrorCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v3, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onVenueList(ZLjava/util/Hashtable;)V

    goto/16 :goto_c

    .line 391
    nop

    :pswitch_data_166
    .packed-switch 0x1389
        :pswitch_13
        :pswitch_71
        :pswitch_b7
        :pswitch_10e
        :pswitch_12
        :pswitch_71
    .end packed-switch
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 6
    .parameter "request"

    .prologue
    const/4 v3, 0x1

    .line 451
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #calls: Lcom/vlingo/client/social/api/FoursquareAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$100(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    if-eq v0, p1, :cond_a

    .line 467
    :goto_9
    return v3

    .line 456
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "Request timed out. Please try again."

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->methodSig:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_1c
    goto :goto_9

    .line 464
    :pswitch_1d
    iget-object v0, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->callback:Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$300(Lcom/vlingo/client/social/api/FoursquareAPI;)Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vlingo/client/social/api/FoursquareAPI$HttpCallbackImpl;->this$0:Lcom/vlingo/client/social/api/FoursquareAPI;

    #getter for: Lcom/vlingo/client/social/api/FoursquareAPI;->params:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/vlingo/client/social/api/FoursquareAPI;->access$200(Lcom/vlingo/client/social/api/FoursquareAPI;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/social/api/FoursquareAPI$FoursquareCallback;->onLoginResult(ZLjava/util/Hashtable;)V

    goto :goto_9

    .line 458
    :pswitch_data_2e
    .packed-switch 0x1389
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
