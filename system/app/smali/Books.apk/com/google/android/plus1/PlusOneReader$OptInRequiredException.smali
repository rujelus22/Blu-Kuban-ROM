.class public Lcom/google/android/plus1/PlusOneReader$OptInRequiredException;
.super Lcom/google/android/plus1/PlusOneReader$PlusOneException;
.source "PlusOneReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptInRequiredException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method