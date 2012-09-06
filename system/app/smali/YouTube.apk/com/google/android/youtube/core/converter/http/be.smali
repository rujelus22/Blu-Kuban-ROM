.class public final Lcom/google/android/youtube/core/converter/http/be;
.super Lcom/google/android/youtube/core/converter/http/bc;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/bc;-><init>()V

    .line 15
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/youtube/core/converter/http/be;->a:I

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 13
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    if-lez v0, :cond_17

    :goto_9
    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :cond_17
    const/16 v0, 0x4000

    goto :goto_9
.end method
