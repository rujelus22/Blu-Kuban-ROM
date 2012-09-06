.class public interface abstract Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;
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
    name = "SubscriptionDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCategories(I)Lcom/google/feedreader/extrpc/Client$Category;
.end method

.method public abstract getCategoriesCount()I
.end method

.method public abstract getCategoriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstitemmsec()J
.end method

.method public abstract getHtmlUrl()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSortid()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasFirstitemmsec()Z
.end method

.method public abstract hasHtmlUrl()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasSortid()Z
.end method

.method public abstract hasTitle()Z
.end method
