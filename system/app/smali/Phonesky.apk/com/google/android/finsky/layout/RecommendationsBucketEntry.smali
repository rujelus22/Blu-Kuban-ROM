.class public Lcom/google/android/finsky/layout/RecommendationsBucketEntry;
.super Lcom/google/android/finsky/layout/OverviewBucketEntry;
.source "RecommendationsBucketEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;
    }
.end annotation


# instance fields
.field private mDismissalButton:Landroid/view/View;

.field private mDismissedOverlay:Landroid/view/View;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mReason:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private clearState()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iput-object v1, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method public dismissCurrentEntry()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public getCurrentDocId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->onFinishInflate()V

    .line 47
    const v0, 0x7f0801dd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    .line 48
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    .line 50
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 6
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "isLastRow"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDocument is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMockDocument(I)V
    .registers 2
    .parameter "backend"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->clearState()V

    .line 86
    return-void
.end method

.method public setNoDocument()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->clearState()V

    .line 92
    return-void
.end method

.method public setRecommendationsDocument(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;Z)V
    .registers 11
    .parameter "dfeApi"
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "isLastRow"
    .parameter "listener"
    .parameter "isDismissed"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p2, p3, p4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 56
    iput-object p3, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 57
    iget-object v3, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissedOverlay:Landroid/view/View;

    if-eqz p6, :cond_2a

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    if-eqz p6, :cond_2c

    :goto_13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mReason:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/RecommendationsBucketEntry;->mDismissalButton:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;

    invoke-direct {v1, p0, p1, p3, p5}, Lcom/google/android/finsky/layout/RecommendationsBucketEntry$1;-><init>(Lcom/google/android/finsky/layout/RecommendationsBucketEntry;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/RecommendationsBucketEntry$OnDismissalListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void

    :cond_2a
    move v0, v2

    .line 57
    goto :goto_c

    :cond_2c
    move v2, v1

    .line 58
    goto :goto_13
.end method
