.class public interface abstract Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;
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
    name = "ItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getAnnotations(I)Lcom/google/feedreader/extrpc/Client$Item$Annotation;
.end method

.method public abstract getAnnotationsCount()I
.end method

.method public abstract getAnnotationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategories(I)Lcom/google/feedreader/extrpc/Client$Item$Category;
.end method

.method public abstract getCategoriesCount()I
.end method

.method public abstract getCategoriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
.end method

.method public abstract getLinksCount()I
.end method

.method public abstract getLinksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMedia(I)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
.end method

.method public abstract getMediaCount()I
.end method

.method public abstract getMediaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item$MediaContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrigin()Lcom/google/feedreader/extrpc/Client$Item$Origin;
.end method

.method public abstract getPublishedMsec()J
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getTimestampUsec()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUpdatedMsec()J
.end method

.method public abstract hasContent()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasOrigin()Z
.end method

.method public abstract hasPublishedMsec()Z
.end method

.method public abstract hasSummary()Z
.end method

.method public abstract hasTimestampUsec()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasUpdatedMsec()Z
.end method
