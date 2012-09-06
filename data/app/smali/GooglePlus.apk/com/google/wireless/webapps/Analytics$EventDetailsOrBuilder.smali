.class public interface abstract Lcom/google/wireless/webapps/Analytics$EventDetailsOrBuilder;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventDetailsOrBuilder"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getEndView()Lcom/google/wireless/webapps/Analytics$UniqueId;
.end method

.method public abstract getErrorCode(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
.end method

.method public abstract getErrorCodeCount()I
.end method

.method public abstract getErrorCodeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavaRequestId(I)J
.end method

.method public abstract getFavaRequestIdCount()I
.end method

.method public abstract getFavaRequestIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartView()Lcom/google/wireless/webapps/Analytics$UniqueId;
.end method

.method public abstract getTarget(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
.end method

.method public abstract getTargetCount()I
.end method

.method public abstract getTargetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCount()Z
.end method

.method public abstract hasEndView()Z
.end method

.method public abstract hasStartView()Z
.end method
