.class public Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;
.super Ljava/lang/Object;
.source "PuggleResultItems.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/unveil/results/PuggleResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field private sign:I


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "ascending"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_9

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;->sign:I

    .line 33
    :goto_8
    return-void

    .line 31
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;->sign:I

    goto :goto_8
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/unveil/results/PuggleResultItem;Lcom/google/android/apps/unveil/results/PuggleResultItem;)I
    .registers 8
    .parameter "first"
    .parameter "second"

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    const/4 v0, 0x0

    .line 47
    :goto_15
    return v0

    .line 40
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 41
    const/4 v0, 0x1

    goto :goto_15

    .line 44
    :cond_22
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/PuggleResultItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 45
    const/4 v0, -0x1

    goto :goto_15

    .line 47
    :cond_2e
    iget v0, p0, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;->sign:I

    iget-wide v1, p1, Lcom/google/android/apps/unveil/results/PuggleResultItem;->price:D

    iget-wide v3, p2, Lcom/google/android/apps/unveil/results/PuggleResultItem;->price:D

    sub-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/2addr v0, v1

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/apps/unveil/results/PuggleResultItem;

    .end local p1
    check-cast p2, Lcom/google/android/apps/unveil/results/PuggleResultItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/env/puggle/PuggleResultItems$PriceComparator;->compare(Lcom/google/android/apps/unveil/results/PuggleResultItem;Lcom/google/android/apps/unveil/results/PuggleResultItem;)I

    move-result v0

    return v0
.end method
