.class public interface abstract Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operation"
.end annotation


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getScope()Ljava/lang/String;
.end method

.method public abstract performApiaryCalls(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Lcom/google/api/client/json/JsonFactory;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
