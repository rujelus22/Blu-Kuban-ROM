.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;
.super Ljava/lang/Object;
.source "DownloadRestarterRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRecords"
.end annotation


# instance fields
.field private mInitialized:Z

.field private mUriRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mUriRowMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->removeRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Landroid/database/Cursor;Ljava/util/Map;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->initializeAndPrune(Landroid/database/Cursor;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->isInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->getRecord(Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v0

    return-object v0
.end method

.method private getRecord(Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    .registers 4
    .parameter "contentUri"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mInitialized:Z

    if-nez v0, :cond_c

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DownloadRecords never initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mUriRowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    return-object v0
.end method

.method private initializeAndPrune(Landroid/database/Cursor;Ljava/util/Map;)Z
    .registers 20
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, uriUrlMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 105
    const/4 v12, 0x0

    .line 155
    :goto_3
    return v12

    .line 108
    :cond_4
    const-string v12, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, columnId:I
    const-string v12, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, columnStatus:I
    const-string v12, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 111
    .local v5, columnUrl:I
    const-string v12, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 112
    .local v4, columnTitle:I
    const-string v12, "lastmod"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, columnLastMod:I
    const/4 v10, 0x0

    .line 116
    .local v10, numPruned:I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_36

    const/4 v12, -0x1

    if-eq v3, v12, :cond_36

    const/4 v12, -0x1

    if-ne v2, v12, :cond_38

    .line 117
    :cond_36
    const/4 v12, 0x0

    goto :goto_3

    .line 120
    :cond_38
    :goto_38
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_f5

    .line 121
    new-instance v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V

    .line 122
    .local v11, row:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    .line 124
    const/4 v12, -0x1

    if-ne v5, v12, :cond_cc

    iget-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :goto_61
    iput-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->sourceUrl:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->status:I

    .line 127
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->lastModified:J

    .line 128
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_d3

    const-string v12, ""

    :goto_7d
    iput-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->title:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 131
    .local v8, now:J
    iget-wide v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->lastModified:J

    sub-long v6, v8, v12

    .line 133
    .local v6, elapsed:J
    const-wide/32 v12, 0x5265c00

    cmp-long v12, v6, v12

    if-lez v12, :cond_da

    .line 136
    add-int/lit8 v10, v10, 0x1

    .line 137
    const-string v12, "Pruning download that is %d hours old from the DownloadManager cursor."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-wide/32 v15, 0x36ee80

    div-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;
    invoke-static {v12}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$200(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v12

    iget-object v13, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 146
    :goto_b5
    iget-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    if-nez v12, :cond_38

    .line 148
    const-string v12, "contentUri is null; sourceUrl is %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->sourceUrl:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 124
    .end local v6           #elapsed:J
    .end local v8           #now:J
    :cond_cc
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_61

    .line 128
    :cond_d3
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_7d

    .line 140
    .restart local v6       #elapsed:J
    .restart local v8       #now:J
    :cond_da
    iget-object v12, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->sourceUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 141
    const-string v12, "Could not determine source url of download."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b5

    .line 143
    :cond_eb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mUriRowMap:Ljava/util/HashMap;

    iget-object v13, v11, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 153
    .end local v6           #elapsed:J
    .end local v8           #now:J
    .end local v11           #row:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    :cond_f5
    const-string v12, "Pruned %d old downloads from the cursor."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mInitialized:Z

    .line 155
    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method private isInitialized()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mInitialized:Z

    return v0
.end method

.method private removeRecord(Ljava/lang/String;)V
    .registers 4
    .parameter "contentUri"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mInitialized:Z

    if-nez v0, :cond_c

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DownloadRecords never initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->mUriRowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method
