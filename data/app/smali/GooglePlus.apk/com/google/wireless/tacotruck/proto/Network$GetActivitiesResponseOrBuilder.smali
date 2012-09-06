.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponseOrBuilder;
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
    name = "GetActivitiesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
.end method

.method public abstract getActivityCount()I
.end method

.method public abstract getActivityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextContinuationToken()Ljava/lang/String;
.end method

.method public abstract hasNextContinuationToken()Z
.end method
