.class public interface abstract Lcom/google/android/plus1/PlusOneEditor;
.super Ljava/lang/Object;
.source "PlusOneEditor.java"


# virtual methods
.method public abstract setPlusOne(Landroid/net/Uri;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation
.end method
