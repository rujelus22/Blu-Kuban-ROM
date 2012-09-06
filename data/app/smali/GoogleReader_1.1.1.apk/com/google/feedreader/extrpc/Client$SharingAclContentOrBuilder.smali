.class public interface abstract Lcom/google/feedreader/extrpc/Client$SharingAclContentOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SharingAclContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getIsEditingDisabled()Z
.end method

.method public abstract getMemberId(I)J
.end method

.method public abstract getMemberIdCount()I
.end method

.method public abstract getMemberIdList()Ljava/util/List;
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

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasIsEditingDisabled()Z
.end method

.method public abstract hasType()Z
.end method
