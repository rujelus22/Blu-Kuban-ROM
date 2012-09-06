.class public Lcom/googlex/common/async/ClientLoginService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/async/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/async/ClientLoginService$LoginRequestImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCOUNTS_URL:Ljava/lang/String; = "https://www.google.com/accounts/"


# instance fields
.field private final accountsUrl:Ljava/lang/String;

.field private final factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

.field private final runner:Lcom/googlex/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequestFactory;)V
    .registers 4

    const-string v0, "https://www.google.com/accounts/"

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/async/ClientLoginService;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/common/async/ClientLoginService;->runner:Lcom/googlex/common/task/TaskRunner;

    iput-object p2, p0, Lcom/googlex/common/async/ClientLoginService;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    iput-object p3, p0, Lcom/googlex/common/async/ClientLoginService;->accountsUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createLoginRequest()Lcom/googlex/common/async/LoginRequest;
    .registers 5

    new-instance v0, Lcom/googlex/common/async/ClientLoginService$LoginRequestImpl;

    iget-object v1, p0, Lcom/googlex/common/async/ClientLoginService;->runner:Lcom/googlex/common/task/TaskRunner;

    iget-object v2, p0, Lcom/googlex/common/async/ClientLoginService;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    iget-object v3, p0, Lcom/googlex/common/async/ClientLoginService;->accountsUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/googlex/common/async/ClientLoginService$LoginRequestImpl;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    return-object v0
.end method
