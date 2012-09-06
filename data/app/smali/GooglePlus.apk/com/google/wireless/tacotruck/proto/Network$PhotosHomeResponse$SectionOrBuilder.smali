.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SectionOrBuilder"
.end annotation


# virtual methods
.method public abstract getCover(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getCoverCount()I
.end method

.method public abstract getCoverList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationCount()I
.end method

.method public abstract getTimestampMsec()J
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
.end method

.method public abstract hasNotificationCount()Z
.end method

.method public abstract hasTimestampMsec()Z
.end method

.method public abstract hasTotalCount()Z
.end method

.method public abstract hasType()Z
.end method
