.class public Lcom/google/api/services/plus/Plus$Activities$Insert;
.super Lcom/google/api/services/plus/PlusRequest;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus$Activities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation


# instance fields
.field private content:Lcom/google/api/services/plus/model/Activity;

.field private preview:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "preview"
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/plus/Plus$Activities;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "userId"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/api/services/plus/Plus$Activities;Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;)V
    .registers 7
    .parameter
    .parameter "userId"
    .parameter "content"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/api/services/plus/Plus$Activities$Insert;->this$1:Lcom/google/api/services/plus/Plus$Activities;

    .line 683
    iget-object v0, p1, Lcom/google/api/services/plus/Plus$Activities;->this$0:Lcom/google/api/services/plus/Plus;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v2, "people/{userId}/activities"

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/api/services/plus/PlusRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iput-object p2, p0, Lcom/google/api/services/plus/Plus$Activities$Insert;->userId:Ljava/lang/String;

    .line 685
    iput-object p3, p0, Lcom/google/api/services/plus/Plus$Activities$Insert;->content:Lcom/google/api/services/plus/model/Activity;

    .line 686
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/services/plus/Plus$Activities;Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;Lcom/google/api/services/plus/Plus$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/services/plus/Plus$Activities$Insert;-><init>(Lcom/google/api/services/plus/Plus$Activities;Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/plus/model/Activity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/google/api/services/plus/Plus$Activities$Insert;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 697
    const-class v0, Lcom/google/api/services/plus/model/Activity;

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/Activity;

    .line 699
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/plus/model/Activity;->setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 700
    return-object v0
.end method

.method public setPreview(Ljava/lang/Boolean;)Lcom/google/api/services/plus/Plus$Activities$Insert;
    .registers 2
    .parameter "preview"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/google/api/services/plus/Plus$Activities$Insert;->preview:Ljava/lang/Boolean;

    .line 745
    return-object p0
.end method
