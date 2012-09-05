.class public Lcom/google/api/services/pos/Pos$Plusones;
.super Ljava/lang/Object;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Plusones"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/Pos$Plusones$Delete;,
        Lcom/google/api/services/pos/Pos$Plusones$GetDefaultAcl;,
        Lcom/google/api/services/pos/Pos$Plusones$Insert;,
        Lcom/google/api/services/pos/Pos$Plusones$ConfirmImplicitConnection;,
        Lcom/google/api/services/pos/Pos$Plusones$GetPeople;,
        Lcom/google/api/services/pos/Pos$Plusones$List;,
        Lcom/google/api/services/pos/Pos$Plusones$Get;,
        Lcom/google/api/services/pos/Pos$Plusones$GetSignupState;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/pos/Pos;


# direct methods
.method public constructor <init>(Lcom/google/api/services/pos/Pos;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Delete;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Lcom/google/api/services/pos/Pos$Plusones$Delete;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/services/pos/Pos$Plusones$Delete;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/Pos$1;)V

    .line 1215
    .local v0, result:Lcom/google/api/services/pos/Pos$Plusones$Delete;
    iget-object v1, p0, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    #calls: Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    invoke-static {v1, v0}, Lcom/google/api/services/pos/Pos;->access$1500(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 1216
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Plusones$Get;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lcom/google/api/services/pos/Pos$Plusones$Get;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/services/pos/Pos$Plusones$Get;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/Pos$1;)V

    .line 259
    .local v0, result:Lcom/google/api/services/pos/Pos$Plusones$Get;
    iget-object v1, p0, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    #calls: Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    invoke-static {v1, v0}, Lcom/google/api/services/pos/Pos;->access$300(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 260
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;)Lcom/google/api/services/pos/Pos$Plusones$Insert;
    .registers 5
    .parameter "id"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/google/api/services/pos/Pos$Plusones$Insert;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/api/services/pos/Pos$Plusones$Insert;-><init>(Lcom/google/api/services/pos/Pos$Plusones;Ljava/lang/String;Lcom/google/api/services/pos/model/Plusones;Lcom/google/api/services/pos/Pos$1;)V

    .line 821
    .local v0, result:Lcom/google/api/services/pos/Pos$Plusones$Insert;
    iget-object v1, p0, Lcom/google/api/services/pos/Pos$Plusones;->this$0:Lcom/google/api/services/pos/Pos;

    #calls: Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    invoke-static {v1, v0}, Lcom/google/api/services/pos/Pos;->access$1100(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 822
    return-object v0
.end method
