.class public Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;
.super Landroid/widget/RelativeLayout;
.source "SearchPlateLayout.java"


# instance fields
.field private mChildToCopyStateFrom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 40
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->mChildToCopyStateFrom:I

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_a

    if-ne v0, p0, :cond_f

    .line 42
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 44
    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    goto :goto_e
.end method

.method public setChildToCopyStateFrom(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->mChildToCopyStateFrom:I

    .line 36
    return-void
.end method
