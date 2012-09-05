.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetActivityResponseOrBuilder"
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

.method public abstract getMissingActivity(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
.end method

.method public abstract getMissingActivityCount()I
.end method

.method public abstract getMissingActivityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation
.end method
