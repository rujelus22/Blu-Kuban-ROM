.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetActivityOrderResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetActivityOrderResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getOrder(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;
.end method

.method public abstract getOrderCount()I
.end method

.method public abstract getOrderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityOrder;",
            ">;"
        }
    .end annotation
.end method
