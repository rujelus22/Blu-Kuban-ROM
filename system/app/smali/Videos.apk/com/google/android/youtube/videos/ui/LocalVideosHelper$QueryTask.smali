.class Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
.super Landroid/os/AsyncTask;
.source "LocalVideosHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/LocalVideosHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/videos/LocalVideo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 27
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v21, v0

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 131
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_111

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_111

    .line 132
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v20, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 134
    .local v18, idColumn:I
    const-string v21, "mime_type"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 135
    .local v19, mimeTypeColumn:I
    const-string v21, "_display_name"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 136
    .local v16, displayNameColumn:I
    const-string v21, "datetaken"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 137
    .local v15, dateTakenColumn:I
    const-string v21, "date_modified"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 138
    .local v14, dateModifiedColumn:I
    const-string v21, "date_added"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 139
    .local v13, dateAddedColumn:I
    const-string v21, "duration"

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 141
    .local v17, durationColumn:I
    const/4 v11, 0x0

    .line 143
    .local v11, count:I
    :cond_5e
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 144
    .local v3, id:J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 145
    .local v5, uri:Landroid/net/Uri;
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, mimeType:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, displayName:Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v10, v0

    .line 148
    .local v10, duration:I
    new-instance v8, Ljava/util/Date;

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 149
    .local v8, dateTaken:Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 150
    .local v9, dateModified:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_c7

    .line 152
    new-instance v9, Ljava/util/Date;

    .end local v9           #dateModified:Ljava/util/Date;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 154
    .restart local v9       #dateModified:Ljava/util/Date;
    :cond_c7
    new-instance v2, Lcom/google/android/youtube/videos/LocalVideo;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/youtube/videos/LocalVideo;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V

    .line 156
    .local v2, video:Lcom/google/android/youtube/videos/LocalVideo;
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v21, v0

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->localVideoThumbnailStore:Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;
    invoke-static/range {v21 .. v21}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$700(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v22, v0

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static/range {v22 .. v22}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$600(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->getBitmap(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 159
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_fa

    const/16 v21, 0x64

    move/from16 v0, v21

    if-lt v11, v0, :cond_5e

    .line 164
    .end local v2           #video:Lcom/google/android/youtube/videos/LocalVideo;
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #dateTaken:Ljava/util/Date;
    .end local v9           #dateModified:Ljava/util/Date;
    .end local v10           #duration:I
    .end local v11           #count:I
    .end local v13           #dateAddedColumn:I
    .end local v14           #dateModifiedColumn:I
    .end local v15           #dateTakenColumn:I
    .end local v16           #displayNameColumn:I
    .end local v17           #durationColumn:I
    .end local v18           #idColumn:I
    .end local v19           #mimeTypeColumn:I
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    move-object/from16 v21, v0

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->localVideoThumbnailStore:Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;
    invoke-static/range {v21 .. v21}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$700(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->retainOnly(Ljava/util/List;)V

    .line 166
    if-eqz v12, :cond_110

    .line 167
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_110
    return-object v20

    .line 161
    .end local v20           #videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    :cond_111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    .restart local v20       #videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    goto :goto_fa
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    const/4 v2, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(IZ)V

    .line 182
    :goto_13
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$802(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;)Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    .line 183
    return-void

    .line 178
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->addAll(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->hide()V

    goto :goto_13
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->clear()V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->setLoading()V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->this$0:Lcom/google/android/youtube/videos/ui/LocalVideosHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method
