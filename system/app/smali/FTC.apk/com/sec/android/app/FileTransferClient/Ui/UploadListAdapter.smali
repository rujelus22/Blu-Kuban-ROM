.class public Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UploadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
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
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, sessions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/SessionData;>;"
    const v0, 0x1020014

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->items:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    monitor-enter p0

    move-object/from16 v8, p2

    .line 50
    .local v8, v:Landroid/view/View;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 51
    .local v5, ss:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    new-instance v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;

    invoke-direct {v9}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;-><init>()V

    .line 52
    .local v9, vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    if-eqz v5, :cond_151

    .line 54
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    if-nez v8, :cond_73

    .line 59
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030005

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 61
    new-instance v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;

    invoke-direct {v10}, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;-><init>()V

    .line 62
    .local v10, vhTmpMulti:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    const v11, 0x7f07000c

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    .line 63
    const v11, 0x7f07000a

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    .line 64
    const v11, 0x7f07000b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->progressTitle:Landroid/widget/TextView;

    .line 65
    const v11, 0x7f07000d

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    .line 66
    const v11, 0x7f07000e

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v8, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    .end local v10           #vhTmpMulti:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    :cond_73
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    check-cast v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;

    .line 85
    .restart local v9       #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    if-eqz v9, :cond_151

    .line 87
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSendCount()I

    move-result v11

    add-int/lit8 v2, v11, 0x1

    .line 89
    .local v2, index:I
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v11

    if-le v2, v11, :cond_8b

    .line 90
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v2

    .line 92
    :cond_8b
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_153

    .line 94
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_be
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalByte()J

    move-result-wide v6

    .line 102
    .local v6, totalbyte:J
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_ca

    .line 103
    const-wide/16 v6, 0x1

    .line 105
    :cond_ca
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSendByte()J

    move-result-wide v11

    long-to-double v11, v11

    long-to-double v13, v6

    div-double/2addr v11, v13

    const-wide v13, 0x3f747ae147ae147bL

    add-double v3, v11, v13

    .line 107
    .local v3, percent:D
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    if-eqz v11, :cond_f8

    .line 108
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->progressText:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v13, 0x4059

    mul-double/2addr v13, v3

    double-to-int v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_f8
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->progressTitle:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f060001

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f060035

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTitle()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v11

    const/16 v12, 0x835

    if-ne v11, v12, :cond_179

    .line 114
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const v12, 0x7f060047

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V
    :try_end_151
    .catchall {:try_start_3 .. :try_end_151} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_151} :catch_15c

    .line 138
    .end local v2           #index:I
    .end local v3           #percent:D
    .end local v5           #ss:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .end local v6           #totalbyte:J
    .end local v9           #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    :cond_151
    :goto_151
    monitor-exit p0

    return-object v8

    .line 98
    .restart local v2       #index:I
    .restart local v5       #ss:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .restart local v9       #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    :cond_153
    :try_start_153
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->fileCount:Landroid/widget/TextView;

    const-string v12, "(1/1)"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15a} :catch_15c

    goto/16 :goto_be

    .line 134
    .end local v2           #index:I
    .end local v5           #ss:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .end local v9           #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    :catch_15c
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    :try_start_15d
    const-string v11, "[FT]-Client"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UploadListAdapter :Exception on getView"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_15d .. :try_end_175} :catchall_176

    goto :goto_151

    .line 47
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_176
    move-exception v11

    monitor-exit p0

    throw v11

    .line 118
    .restart local v2       #index:I
    .restart local v3       #percent:D
    .restart local v5       #ss:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .restart local v6       #totalbyte:J
    .restart local v9       #vh:Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;
    :cond_179
    :try_start_179
    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionState()I

    move-result v11

    const/16 v12, 0x837

    if-ge v11, v12, :cond_196

    .line 120
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const v12, 0x7f060047

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_151

    .line 126
    :cond_196
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getTotalByte()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 128
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSendByte()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    iget-object v11, v9, Lcom/sec/android/app/FileTransferClient/Ui/UploadListAdapter$ViewHolder;->waitText:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1b6
    .catchall {:try_start_179 .. :try_end_1b6} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1b6} :catch_15c

    goto :goto_151
.end method
