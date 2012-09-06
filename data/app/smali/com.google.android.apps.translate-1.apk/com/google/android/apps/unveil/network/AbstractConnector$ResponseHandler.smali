.class public abstract Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.super Ljava/lang/Object;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 338
    .local p0, this:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method


# virtual methods
.method public onHeavyProcessing()V
    .registers 1

    .prologue
    .line 352
    .local p0, this:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    return-void
.end method

.method public abstract onNetworkError()V
.end method

.method public abstract onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;)V"
        }
    .end annotation
.end method

.method public abstract onServerErrorCode(I)V
.end method
