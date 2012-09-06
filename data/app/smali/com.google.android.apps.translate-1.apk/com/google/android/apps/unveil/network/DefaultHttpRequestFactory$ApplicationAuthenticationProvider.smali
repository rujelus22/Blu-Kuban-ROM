.class final Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationAuthenticationProvider"
.end annotation


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    return-void
.end method


# virtual methods
.method public attachHeader(Lorg/apache/http/HttpRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->isAuthenticated(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getAuthState()Lcom/google/android/apps/unveil/auth/AuthState;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/auth/AuthState;->getAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, authToken:Ljava/lang/String;
    const-string v1, "Cookie"

    #calls: Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->toSidCookieValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0           #authToken:Ljava/lang/String;
    :cond_23
    return-void
.end method
