.class public Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;
.super Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.source "DetailsDescriptionViewBinder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    return-void
.end method

.method private getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .registers 14
    .parameter "doc"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 41
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v0, :cond_a1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionString()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 46
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f070102

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_27
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_38

    .line 52
    const-string v4, "<br>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_38
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f070196

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5d

    .line 60
    const-string v4, "<br>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_5d
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f070197

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_82

    .line 68
    const-string v4, "<br>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_82
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getNormalizedContentRating()I

    move-result v3

    .line 71
    .local v3, contentRating:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f070101

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #contentRating:I
    :goto_a0
    return-object v4

    .line 77
    :cond_a1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    .line 78
    .local v1, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v1, :cond_be

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 81
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_b9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a0

    .line 87
    .end local v2           #builder:Ljava/lang/StringBuilder;
    :cond_be
    const/4 v4, 0x0

    goto :goto_a0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .registers 12
    .parameter "view"
    .parameter "doc"
    .parameter "savedState"

    .prologue
    .line 22
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getDescriptionHeaderStringId(I)I

    move-result v3

    .line 23
    .local v3, headerStringId:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getOriginalDescription()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, descriptionText:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, extraDescriptionText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .local v4, fullDesc:Ljava/lang/CharSequence;
    :goto_1a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 29
    invoke-super/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 30
    return-void

    .line 26
    .end local v4           #fullDesc:Ljava/lang/CharSequence;
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    goto :goto_1a
.end method
