.class public interface abstract Lcom/google/feedreader/extrpc/Client$GroupsListOrBuilder;
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
    name = "GroupsListOrBuilder"
.end annotation


# virtual methods
.method public abstract getSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
.end method

.method public abstract getSharingGroupsCount()I
.end method

.method public abstract getSharingGroupsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;"
        }
    .end annotation
.end method
