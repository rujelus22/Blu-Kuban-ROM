.class public interface abstract Lcom/google/android/apps/books/render/ReaderDataSource;
.super Ljava/lang/Object;
.source "ReaderDataSource.java"


# virtual methods
.method public abstract getResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
