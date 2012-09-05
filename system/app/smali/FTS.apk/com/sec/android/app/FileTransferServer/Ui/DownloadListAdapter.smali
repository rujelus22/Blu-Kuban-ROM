.class public Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, sessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferServer/Data/SessionData;>;"
    const v0, 0x1020014

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->items:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    monitor-enter p0

    move-object v3, p2

    .line 50
    .local v3, v:Landroid/view/View;
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 51
    .local v2, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    if-eqz v2, :cond_114

    .line 53
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    if-nez v3, :cond_63

    .line 58
    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030006

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    new-instance v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;-><init>()V

    .line 60
    .local v5, vhTmp:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    const v6, 0x7f070012

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    .line 61
    const v6, 0x7f070010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    .line 62
    const v6, 0x7f070011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->progressTitle:Landroid/widget/TextView;

    .line 63
    const v6, 0x7f070013

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    .line 64
    const v6, 0x7f070014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v5           #vhTmp:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    :cond_63
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;

    .line 83
    .local v4, vh:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    if-eqz v4, :cond_114

    .line 86
    iget v6, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    add-int/lit8 v1, v6, 0x1

    .line 87
    .local v1, index:I
    iget v6, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    if-le v1, v6, :cond_75

    .line 88
    iget v1, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    .line 90
    :cond_75
    iget v6, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_116

    .line 92
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_a4
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    if-eqz v6, :cond_c4

    .line 108
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_c4
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->progressTitle:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060028

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget v6, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    const/16 v7, 0x44e

    if-ge v6, v7, :cond_142

    .line 121
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const v7, 0x7f060047

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V
    :try_end_114
    .catchall {:try_start_2 .. :try_end_114} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_114} :catch_125

    .line 139
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #vh:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    :cond_114
    :goto_114
    monitor-exit p0

    return-object v3

    .line 96
    .restart local v1       #index:I
    .restart local v2       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #vh:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    :cond_116
    :try_start_116
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    const-string v7, "(1/1)"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-string v6, "[FT]-Server"

    const-string v7, "DownloadListAdapter :fileCount is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_124} :catch_125

    goto :goto_a4

    .line 135
    .end local v1           #index:I
    .end local v2           #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .end local v4           #vh:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    :catch_125
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    :try_start_126
    const-string v6, "[FT]-Server"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadListAdapter :Exception on getView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_126 .. :try_end_13e} :catchall_13f

    goto :goto_114

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_13f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 127
    .restart local v1       #index:I
    .restart local v2       #sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    .restart local v4       #vh:Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;
    :cond_142
    :try_start_142
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 129
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->getProgressPercent()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v6, v4, Lcom/sec/android/app/FileTransferServer/Ui/DownloadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_15e
    .catchall {:try_start_142 .. :try_end_15e} :catchall_13f
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_15e} :catch_125

    goto :goto_114
.end method
