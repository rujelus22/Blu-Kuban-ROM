.class public Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileStorageListAdapter.java"


# static fields
.field public static final ITEM_AUDIO:I = 0x2

.field public static final ITEM_IMAGE:I = 0x1

.field public static final ITEM_TOTAL:I = 0x0

.field public static final ITEM_VIDEO:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1090004

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 54
    .local v6, view:Landroid/view/View;
    const-string v3, ""

    .line 55
    .local v3, label:Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, count:I
    const-wide/16 v0, 0x0

    .line 58
    .local v0, bytes:J
    if-nez p1, :cond_58

    .line 59
    const-string v7, "total"

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    const-string v3, "Total"

    .line 61
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget v2, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalCount:I

    .line 62
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v0, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalBytes:J

    .line 84
    :cond_22
    :goto_22
    const v7, 0x1020014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    .local v4, text1:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v7, 0x1020015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 87
    .local v5, text2:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " Files / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object v6

    .line 64
    .end local v4           #text1:Landroid/widget/TextView;
    .end local v5           #text2:Landroid/widget/TextView;
    :cond_58
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6b

    .line 65
    const-string v7, "image"

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    const-string v3, "Image"

    .line 67
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget v2, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageCount:I

    .line 68
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v0, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    goto :goto_22

    .line 70
    :cond_6b
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7e

    .line 71
    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    const-string v3, "Audio"

    .line 73
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget v2, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioCount:I

    .line 74
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v0, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    goto :goto_22

    .line 76
    :cond_7e
    const/4 v7, 0x3

    if-ne p1, v7, :cond_22

    .line 77
    const-string v7, "video"

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    const-string v3, "Video"

    .line 79
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget v2, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoCount:I

    .line 80
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    iget-wide v0, v7, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    goto :goto_22
.end method

.method public refresh(Lcom/sprint/dsa/diagnostics/FileTypeStats;)V
    .registers 2
    .parameter "stats"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->mStats:Lcom/sprint/dsa/diagnostics/FileTypeStats;

    .line 31
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method
