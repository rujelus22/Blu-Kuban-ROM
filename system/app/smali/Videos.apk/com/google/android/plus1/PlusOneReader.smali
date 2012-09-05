.class public interface abstract Lcom/google/android/plus1/PlusOneReader;
.super Ljava/lang/Object;
.source "PlusOneReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    }
.end annotation


# virtual methods
.method public abstract getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation
.end method

.method public abstract getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPlusOnes(Ljava/util/Set;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
