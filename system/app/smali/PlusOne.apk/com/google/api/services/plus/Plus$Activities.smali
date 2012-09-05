.class public Lcom/google/api/services/plus/Plus$Activities;
.super Ljava/lang/Object;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/plus/Plus$Activities$Get;,
        Lcom/google/api/services/plus/Plus$Activities$List;,
        Lcom/google/api/services/plus/Plus$Activities$Search;,
        Lcom/google/api/services/plus/Plus$Activities$Insert;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/plus/Plus;


# direct methods
.method public constructor <init>(Lcom/google/api/services/plus/Plus;)V
    .registers 2
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/google/api/services/plus/Plus$Activities;->this$0:Lcom/google/api/services/plus/Plus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;)Lcom/google/api/services/plus/Plus$Activities$Insert;
    .registers 5
    .parameter "userId"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Lcom/google/api/services/plus/Plus$Activities$Insert;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/api/services/plus/Plus$Activities$Insert;-><init>(Lcom/google/api/services/plus/Plus$Activities;Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;Lcom/google/api/services/plus/Plus$1;)V

    .line 671
    .local v0, result:Lcom/google/api/services/plus/Plus$Activities$Insert;
    iget-object v1, p0, Lcom/google/api/services/plus/Plus$Activities;->this$0:Lcom/google/api/services/plus/Plus;

    #calls: Lcom/google/api/services/plus/Plus;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    invoke-static {v1, v0}, Lcom/google/api/services/plus/Plus;->access$400(Lcom/google/api/services/plus/Plus;Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 672
    return-object v0
.end method
