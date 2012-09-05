.class public Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;
.super Ljava/lang/Object;
.source "BasePlusOneStrings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusOneStringResources"
.end annotation


# instance fields
.field final morePlusOnes:I

.field final noPlusOnes:I

.field final onePlusOne:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "noPlusOnes"
    .parameter "onePlusOne"
    .parameter "morePlusOnes"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->noPlusOnes:I

    .line 40
    iput p2, p0, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->onePlusOne:I

    .line 41
    iput p3, p0, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->morePlusOnes:I

    .line 42
    return-void
.end method
