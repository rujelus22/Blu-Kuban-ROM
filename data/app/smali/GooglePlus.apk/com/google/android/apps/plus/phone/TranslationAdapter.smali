.class public abstract Lcom/google/android/apps/plus/phone/TranslationAdapter;
.super Ljava/lang/Object;
.source "TranslationAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;
    }
.end annotation


# instance fields
.field final mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;)V
    .registers 2
    .parameter "innerAdapter"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    .line 64
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;->translate(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;->translate(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;->translate(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;->translate(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;->translate(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 80
    return-void
.end method

.method protected abstract translate(I)I
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/TranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    return-void
.end method
