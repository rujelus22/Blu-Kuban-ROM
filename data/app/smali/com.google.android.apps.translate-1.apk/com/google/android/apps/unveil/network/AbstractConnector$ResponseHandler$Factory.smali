.class public interface abstract Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;
.super Ljava/lang/Object;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newResponseHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;"
        }
    .end annotation
.end method
