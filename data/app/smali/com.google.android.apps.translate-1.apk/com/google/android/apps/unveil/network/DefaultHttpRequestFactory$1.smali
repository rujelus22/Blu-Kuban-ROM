.class final Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newDynamicProvider(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Lcom/google/android/apps/unveil/env/Provider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;->val$value:Lcom/google/android/apps/unveil/env/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;->val$name:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;->val$value:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
