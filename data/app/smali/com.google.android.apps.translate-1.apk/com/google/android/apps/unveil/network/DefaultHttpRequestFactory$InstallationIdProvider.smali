.class final Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;
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
    name = "InstallationIdProvider"
.end annotation


# static fields
.field public static final INSTALLATION_ID_HEADER:Ljava/lang/String; = "X-Goggles-InstallationId"


# instance fields
.field private final application:Lcom/google/android/apps/unveil/UnveilContext;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;-><init>(Lcom/google/android/apps/unveil/UnveilContext;)V

    return-void
.end method


# virtual methods
.method public attachHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 115
    const-string v0, "X-Goggles-InstallationId"

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
