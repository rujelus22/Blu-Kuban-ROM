.class Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "DownloadQueueActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadQueueAdapter"
.end annotation


# instance fields
.field private mArtistIdx:I

.field private mDownloadPurposesIdx:I

.field private mDownloadStatusIdx:I

.field private mIdIdx:I

.field private mTrackNameIdx:I

.field final synthetic this$0:Lcom/google/android/music/DownloadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/DownloadQueueActivity;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    .line 154
    const v2, 0x7f040014

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/String;

    new-array v5, v0, [I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 155
    return-void
.end method

.method private getColumnIndexes(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 170
    :cond_1c
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    .line 171
    const-string v2, "Artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    .line 172
    const-string v2, "Title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    .line 173
    const-string v2, "purposes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadPurposesIdx:I

    .line 174
    const-string v2, "DownloadStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    .line 175
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;

    .line 198
    .local v4, vh:Lcom/google/android/music/DownloadQueueActivity$ViewHolder;
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->line1:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->line2:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget v5, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadPurposesIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 201
    .local v0, downloadPurposes:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_65

    .line 202
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f02006f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    :goto_32
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aget-object v3, v5, v6

    .line 217
    .local v3, status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v5, :cond_9f

    .line 218
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 220
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 221
    iget v5, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 223
    .local v1, id:J
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    new-instance v6, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v6, v1, v2, v7}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 230
    .end local v1           #id:J
    :goto_64
    return-void

    .line 203
    .end local v3           #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_65
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_6f

    .line 205
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 206
    :cond_6f
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_7c

    .line 207
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f0201ba

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    .line 208
    :cond_7c
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_86

    .line 209
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 211
    :cond_86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown download purpose: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    .restart local v3       #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_9f
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 228
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v5, v8, v7}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    goto :goto_64
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 160
    if-eqz p1, :cond_8

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->getColumnIndexes(Landroid/database/Cursor;)V

    .line 163
    :cond_8
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;-><init>(Lcom/google/android/music/DownloadQueueActivity$1;)V

    .line 181
    .local v1, vh:Lcom/google/android/music/DownloadQueueActivity$ViewHolder;
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->line1:Landroid/widget/TextView;

    .line 182
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->line2:Landroid/widget/TextView;

    .line 183
    const v2, 0x7f10004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    .line 184
    const v2, 0x7f10004b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->downloadType:Landroid/widget/ImageView;

    .line 185
    const v2, 0x7f10003b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    .line 186
    iget-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 188
    new-instance v2, Lcom/google/android/music/BufferProgressListener;

    iget-object v3, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-direct {v2, v3}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, tag:Ljava/lang/Object;
    instance-of v2, v0, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;

    if-eqz v2, :cond_10

    move-object v1, v0

    .line 235
    check-cast v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;

    .line 236
    .local v1, vh:Lcom/google/android/music/DownloadQueueActivity$ViewHolder;
    iget-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v2}, Lcom/google/android/music/BufferProgressListener;->cleanup()V

    .line 238
    .end local v1           #vh:Lcom/google/android/music/DownloadQueueActivity$ViewHolder;
    :cond_10
    return-void
.end method
