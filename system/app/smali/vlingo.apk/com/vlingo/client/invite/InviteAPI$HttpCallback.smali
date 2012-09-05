.class Lcom/vlingo/client/invite/InviteAPI$HttpCallback;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "InviteAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/invite/InviteAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/invite/InviteAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/invite/InviteAPI;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/invite/InviteAPI;Lcom/vlingo/client/invite/InviteAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;-><init>(Lcom/vlingo/client/invite/InviteAPI;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 7
    .parameter "request"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #calls: Lcom/vlingo/client/invite/InviteAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$100(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v1

    if-eq v1, p1, :cond_9

    .line 85
    :goto_8
    return-void

    .line 82
    :cond_9
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "error"

    const v3, 0x7f0902f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v3}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto :goto_8
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 11
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .line 88
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #calls: Lcom/vlingo/client/invite/InviteAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$100(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v4

    if-eq v4, p1, :cond_a

    .line 120
    :goto_9
    return-void

    .line 94
    :cond_a
    iget v4, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_c4

    .line 95
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, responseData:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    if-eqz v2, :cond_ad

    .line 98
    const-string v4, "<TAFResponse>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 99
    const-string v4, "<Error>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string v4, "<Message>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 100
    const-string v4, "<Message>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    const-string v5, "</Message>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v5}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto :goto_9

    .line 105
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_6c
    const-string v4, "<URL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 106
    const-string v4, "<URL link=\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    const-string v5, "\"/>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, urlPart:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v3}, Lcom/vlingo/client/core/util/XmlUtils;->xmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v6}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto/16 :goto_9

    .line 113
    .end local v3           #urlPart:Ljava/lang/String;
    :cond_ad
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v5}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto/16 :goto_9

    .line 116
    .end local v2           #responseData:Ljava/lang/String;
    :cond_c4
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "error"

    const v6, 0x7f0902f7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v5}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto/16 :goto_9
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 8
    .parameter "request"

    .prologue
    const/4 v5, 0x1

    .line 123
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #calls: Lcom/vlingo/client/invite/InviteAPI;->getCurrentRequest()Lcom/vlingo/client/core/http/HttpRequest;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$100(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v1

    if-eq v1, p1, :cond_a

    .line 132
    :goto_9
    return v5

    .line 129
    :cond_a
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "error"

    const v3, 0x7f0902f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->callback:Lcom/vlingo/client/invite/InviteAPI$InviteCallback;
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAPI;->access$400(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAPI$InviteCallback;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->curInfo:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    invoke-static {v3}, Lcom/vlingo/client/invite/InviteAPI;->access$300(Lcom/vlingo/client/invite/InviteAPI;)Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/invite/InviteAPI$HttpCallback;->this$0:Lcom/vlingo/client/invite/InviteAPI;

    #getter for: Lcom/vlingo/client/invite/InviteAPI;->params:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/invite/InviteAPI;->access$200(Lcom/vlingo/client/invite/InviteAPI;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/vlingo/client/invite/InviteAPI$InviteCallback;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V

    goto :goto_9
.end method
