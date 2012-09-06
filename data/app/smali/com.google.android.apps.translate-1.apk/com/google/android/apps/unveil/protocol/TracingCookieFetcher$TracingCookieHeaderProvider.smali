.class final Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;
.super Ljava/lang/Object;
.source "TracingCookieFetcher.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TracingCookieHeaderProvider"
.end annotation


# instance fields
.field private final cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;->cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    .line 144
    return-void
.end method


# virtual methods
.method public attachHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher$TracingCookieHeaderProvider;->cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->getFreshCookie()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, tracingCookie:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 150
    const-string v1, "Cookie"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_11
    return-void
.end method
