.class public interface abstract Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
.super Ljava/lang/Object;
.source "HttpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/HttpTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpTransactionListener"
.end annotation


# virtual methods
.method public abstract onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
.end method

.method public abstract onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHttpTransactionComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onHttpUploadProgress(JJ)V
.end method
