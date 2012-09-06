.class public final Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticHeaderProvider"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;->value:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public attachHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;->value:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
