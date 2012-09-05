.class Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadQueueAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    }
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

    .line 130
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    .line 131
    const v2, 0x7f040011

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/String;

    new-array v5, v0, [I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 132
    return-void
.end method

.method private getColumnIndexes(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 147
    :cond_1c
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    .line 148
    const-string v2, "Artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    .line 149
    const-string v2, "Title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    .line 150
    const-string v2, "purposes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadPurposesIdx:I

    .line 151
    const-string v2, "DownloadStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    .line 152
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

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;

    .line 175
    .local v4, vh:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget v5, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadPurposesIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 178
    .local v0, downloadPurposes:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_64

    .line 179
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f02019a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :goto_32
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aget-object v3, v5, v6

    .line 194
    .local v3, status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v5, :cond_9e

    .line 195
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 197
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    iget v5, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 200
    .local v1, id:J
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    new-instance v6, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v6, v1, v2, v7}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    invoke-virtual {v5, v6}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 206
    .end local v1           #id:J
    :goto_63
    return-void

    .line 180
    .end local v3           #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_64
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_6e

    .line 182
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 183
    :cond_6e
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_7b

    .line 184
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f020235

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_32

    .line 185
    :cond_7b
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_85

    .line 186
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 188
    :cond_85
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

    .line 202
    .restart local v3       #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_9e
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 204
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v5, v8}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    goto :goto_63
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 137
    if-eqz p1, :cond_8

    .line 138
    invoke-direct {p0, p1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->getColumnIndexes(Landroid/database/Cursor;)V

    .line 140
    :cond_8
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;-><init>(Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;Lcom/google/android/music/DownloadQueueActivity$1;)V

    .line 158
    .local v1, vh:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 159
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f100056

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    .line 161
    const v2, 0x7f100057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    .line 162
    const v2, 0x7f10003b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    .line 163
    iget-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 165
    new-instance v2, Lcom/google/android/music/BufferProgressListener;

    iget-object v3, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-direct {v2, v3}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method
