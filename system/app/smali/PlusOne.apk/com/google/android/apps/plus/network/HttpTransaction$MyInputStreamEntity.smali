.class Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "HttpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/HttpTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyInputStreamEntity"
.end annotation


# instance fields
.field private final mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/network/HttpTransaction;Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter "transaction"
    .parameter "wrapped"

    .prologue
    .line 144
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    .line 146
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/HttpTransaction$MyInputStreamEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;-><init>(Lcom/google/android/apps/plus/network/HttpTransaction;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 154
    return-void
.end method
