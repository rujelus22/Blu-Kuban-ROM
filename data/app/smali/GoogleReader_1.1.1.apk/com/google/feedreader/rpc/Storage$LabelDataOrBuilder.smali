.class public interface abstract Lcom/google/feedreader/rpc/Storage$LabelDataOrBuilder;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LabelDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
.end method

.method public abstract getLabelCount()I
.end method

.method public abstract getLabelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;"
        }
    .end annotation
.end method
