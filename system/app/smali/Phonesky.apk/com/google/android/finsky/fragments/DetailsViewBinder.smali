.class public abstract Lcom/google/android/finsky/fragments/DetailsViewBinder;
.super Ljava/lang/Object;
.source "DetailsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mHeaderLayoutId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field protected mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V
    .registers 6
    .parameter "view"
    .parameter "doc"
    .parameter "headerStringId"

    .prologue
    .line 66
    if-ltz p3, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, headerString:Ljava/lang/String;
    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 68
    return-void

    .line 66
    .end local v0           #headerString:Ljava/lang/String;
    :cond_c
    const-string v0, ""

    goto :goto_8
.end method

.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "doc"
    .parameter "headerString"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    .line 72
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 74
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public bind(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4
    .parameter "view"
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    .line 80
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->setupHeader(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public hideHeader()V
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, headerView:Landroid/widget/TextView;
    if-eqz v0, :cond_11

    .line 103
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_11
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 5
    .parameter "context"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 60
    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    const v0, 0x7f0800a2

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    .line 63
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 130
    :cond_f
    return-void
.end method

.method public setHeaderNavigable(Z)V
    .registers 8
    .parameter "isNavigable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, headerView:Landroid/widget/TextView;
    if-eqz p1, :cond_28

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    .local v1, rightDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v1           #rightDrawable:Landroid/graphics/drawable/Drawable;
    :goto_27
    return-void

    .line 116
    :cond_28
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_27
.end method

.method protected setupHeader(Ljava/lang/String;I)V
    .registers 7
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mLayout:Landroid/view/View;

    iget v3, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mHeaderLayoutId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    .local v1, headerView:Landroid/widget/TextView;
    if-eqz v1, :cond_22

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_19
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 96
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .end local v0           #color:I
    :cond_22
    return-void
.end method
