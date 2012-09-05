.class public interface abstract Lcom/google/android/plus1/PlusOneStore;
.super Ljava/lang/Object;
.source "PlusOneStore.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;,
        Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    }
.end annotation


# virtual methods
.method public abstract addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
.end method

.method public abstract getOperations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusOnes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
.end method

.method public abstract setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
.end method

.method public abstract setOperations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation
.end method
