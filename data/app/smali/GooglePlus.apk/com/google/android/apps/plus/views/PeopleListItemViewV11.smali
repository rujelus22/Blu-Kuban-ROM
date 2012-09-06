.class public Lcom/google/android/apps/plus/views/PeopleListItemViewV11;
.super Lcom/google/android/apps/plus/views/PeopleListItemView;
.source "PeopleListItemViewV11.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "bounds"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PeopleListItemViewV11;->mSectionHeaderVisible:Z

    if-eqz v0, :cond_b

    .line 28
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/google/android/apps/plus/views/PeopleListItemViewV11;->mSectionHeaderHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 30
    :cond_b
    return-void
.end method

.method protected setSectionHeaderBackgroundColor()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method
