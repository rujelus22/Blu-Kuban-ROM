.class public Lcom/google/android/finsky/layout/FullRowEntry;
.super Lcom/google/android/finsky/layout/OverviewBucketEntry;
.source "FullRowEntry.java"


# instance fields
.field private mCorpusStrip:Landroid/view/View;

.field private mPlusOne:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->onFinishInflate()V

    .line 28
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FullRowEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mPlusOne:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FullRowEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mCorpusStrip:Landroid/view/View;

    .line 30
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V
    .registers 11
    .parameter "bitmapLoader"
    .parameter "document"
    .parameter "isLastRow"

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 36
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasPlusOneData()Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mPlusOne:Landroid/widget/TextView;

    if-eqz v3, :cond_44

    .line 37
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v1

    .line 38
    .local v1, totalPlusOneCount:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_44

    .line 39
    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mPlusOne:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FullRowEntry;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701f6

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, formatted:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mPlusOne:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .end local v0           #formatted:Ljava/lang/String;
    .end local v1           #totalPlusOneCount:J
    :cond_44
    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mCorpusStrip:Landroid/view/View;

    if-eqz v3, :cond_5e

    .line 48
    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mCorpusStrip:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v3, p0, Lcom/google/android/finsky/layout/FullRowEntry;->mCorpusStrip:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FullRowEntry;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    :cond_5e
    return-void
.end method
