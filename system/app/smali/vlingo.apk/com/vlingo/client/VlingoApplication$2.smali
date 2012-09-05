.class Lcom/vlingo/client/VlingoApplication$2;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "VlingoApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/VlingoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/VlingoApplication;


# direct methods
.method constructor <init>(Lcom/vlingo/client/VlingoApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vlingo/client/VlingoApplication$2;->this$0:Lcom/vlingo/client/VlingoApplication;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 238
    return-void
.end method
