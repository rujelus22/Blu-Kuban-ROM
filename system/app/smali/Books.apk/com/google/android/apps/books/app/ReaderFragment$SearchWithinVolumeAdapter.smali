.class Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;
.super Landroid/widget/CursorAdapter;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchWithinVolumeAdapter"
.end annotation


# instance fields
.field private mEmptyLoading:Z

.field private mEmptyView:Landroid/view/View;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mReadingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 3838
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 3832
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mReadingMode:I

    .line 3834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    .line 3839
    return-void
.end method

.method private updateEmptyLoading()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3855
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 3856
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0f0047

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3858
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0f0048

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    if-eqz v3, :cond_2b

    :goto_25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3861
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 3856
    goto :goto_15

    :cond_2b
    move v2, v1

    .line 3858
    goto :goto_25
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3904
    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mReadingMode:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4f

    move v7, v8

    :goto_8
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3905
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v7, :cond_10

    move v9, v8

    :cond_10
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3907
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3908
    .local v1, pageId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mReadingMode:I

    invoke-virtual {v7, v1, v8}, Lcom/google/android/apps/books/model/VolumeMetadata;->isPageEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 3909
    .local v0, isPageEnabled:Z
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3911
    const v7, 0x1020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3912
    .local v5, text1:Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3914
    .local v6, text2:Landroid/widget/TextView;
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3915
    .local v4, snippetRaw:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 3916
    .local v3, snippetHtml:Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3918
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3919
    .local v2, pageTitle:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 3920
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3924
    :goto_4e
    return-void

    .end local v0           #isPageEnabled:Z
    .end local v1           #pageId:Ljava/lang/String;
    .end local v2           #pageTitle:Ljava/lang/String;
    .end local v3           #snippetHtml:Ljava/lang/CharSequence;
    .end local v4           #snippetRaw:Ljava/lang/String;
    .end local v5           #text1:Landroid/widget/TextView;
    .end local v6           #text2:Landroid/widget/TextView;
    :cond_4f
    move v7, v9

    .line 3904
    goto :goto_8

    .line 3922
    .restart local v0       #isPageEnabled:Z
    .restart local v1       #pageId:Ljava/lang/String;
    .restart local v2       #pageTitle:Ljava/lang/String;
    .restart local v3       #snippetHtml:Ljava/lang/CharSequence;
    .restart local v4       #snippetRaw:Ljava/lang/String;
    .restart local v5       #text1:Landroid/widget/TextView;
    .restart local v6       #text2:Landroid/widget/TextView;
    :cond_51
    const v7, 0x7f0e00a5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4e
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3865
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 3866
    .local v0, count:I
    if-nez v0, :cond_7

    const/4 v0, 0x1

    .end local v0           #count:I
    :cond_7
    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 3876
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_e

    const/4 v0, 0x1

    .line 3877
    .local v0, footer:Z
    :goto_7
    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v1

    :goto_d
    return v1

    .line 3876
    .end local v0           #footer:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 3877
    .restart local v0       #footer:Z
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 3882
    if-nez p1, :cond_24

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_24

    const/4 v0, 0x1

    .line 3883
    .local v0, emptyView:Z
    :goto_a
    if-eqz v0, :cond_26

    .line 3884
    if-nez p2, :cond_1d

    .line 3885
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3886
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3888
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1d
    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyView:Landroid/view/View;

    .line 3889
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->updateEmptyLoading()V

    move-object v2, p2

    .line 3892
    :goto_23
    return-object v2

    .end local v0           #emptyView:Z
    :cond_24
    move v0, v2

    .line 3882
    goto :goto_a

    .line 3892
    .restart local v0       #emptyView:Z
    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_23
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 3871
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3898
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3899
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setEmptyLoading(Z)V
    .registers 2
    .parameter "emptyLoading"

    .prologue
    .line 3846
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mEmptyLoading:Z

    .line 3847
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->updateEmptyLoading()V

    .line 3848
    return-void
.end method

.method public setReadingMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 3851
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mReadingMode:I

    .line 3852
    return-void
.end method

.method public setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 3842
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 3843
    return-void
.end method
