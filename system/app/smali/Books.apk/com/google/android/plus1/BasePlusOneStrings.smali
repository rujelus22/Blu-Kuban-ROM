.class public abstract Lcom/google/android/plus1/BasePlusOneStrings;
.super Ljava/lang/Object;
.source "BasePlusOneStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "context"
    .parameter "resources"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 54
    iget v1, p2, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    if-le v1, v2, :cond_17

    .line 55
    iget v1, p1, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->morePlusOnes:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p2, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, result:Ljava/lang/String;
    :goto_16
    return-object v0

    .line 56
    .end local v0           #result:Ljava/lang/String;
    :cond_17
    iget v1, p2, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    if-lez v1, :cond_22

    .line 57
    iget v1, p1, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->onePlusOne:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_16

    .line 59
    .end local v0           #result:Ljava/lang/String;
    :cond_22
    iget v1, p1, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;->noPlusOnes:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_16
.end method
