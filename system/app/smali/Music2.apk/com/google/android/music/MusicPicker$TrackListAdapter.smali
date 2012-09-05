.class Lcom/google/android/music/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    .line 175
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 176
    iput-object p3, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 177
    const v0, 0x7f0d0064

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 178
    const v0, 0x7f0d0065

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    .line 219
    .local v7, vh:Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    iget v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v9, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v8, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 220
    iget-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v11, v11, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/TextView;->setText([CII)V

    .line 222
    iget v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    div-int/lit16 v6, v8, 0x3e8

    .line 223
    .local v6, secs:I
    if-nez v6, :cond_aa

    .line 224
    iget-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_2c
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 230
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 232
    iget v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_46

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 234
    :cond_46
    iget-object v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_4b
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    iget v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    if-eqz v5, :cond_60

    const-string v8, "<unknown>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 241
    :cond_60
    iget-object v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 246
    .local v4, len:I
    iget-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v8, v8

    if-ge v8, v4, :cond_72

    .line 247
    new-array v8, v4, [C

    iput-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 249
    :cond_72
    const/4 v8, 0x0

    iget-object v9, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v4, v9, v10}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 250
    iget-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v9, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 256
    iget v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 257
    .local v1, id:J
    iget-object v9, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    iget-wide v10, v8, Lcom/google/android/music/MusicPicker;->mSelectedId:J

    cmp-long v8, v1, v10

    if-nez v8, :cond_be

    const/4 v8, 0x1

    :goto_92
    invoke-virtual {v9, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 263
    iget-object v3, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 264
    .local v3, iv:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    iget-wide v8, v8, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    cmp-long v8, v1, v8

    if-nez v8, :cond_c0

    .line 265
    const v8, 0x7f0201d7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :goto_a9
    return-void

    .line 226
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #id:J
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #len:I
    .end local v5           #name:Ljava/lang/String;
    :cond_aa
    iget-object v8, v7, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v9, v6

    invoke-static {p2, v9, v10}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 236
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v5       #name:Ljava/lang/String;
    :cond_b6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 243
    :cond_ba
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 257
    .restart local v1       #id:J
    .restart local v4       #len:I
    :cond_be
    const/4 v8, 0x0

    goto :goto_92

    .line 268
    .restart local v3       #iv:Landroid/widget/ImageView;
    :cond_c0
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    iput-object p1, v0, Lcom/google/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 285
    if-eqz p1, :cond_31

    .line 287
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 288
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 289
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 290
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 291
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 296
    :cond_31
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPicker;->makeListShown()V

    .line 297
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_6

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/google/android/music/MusicPicker$TrackListAdapter;)V

    .line 204
    .local v1, vh:Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f10003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f10003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 206
    const v2, 0x7f100058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 207
    const v2, 0x7f100076

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 208
    const v2, 0x7f100061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 209
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 210
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/google/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/google/android/music/MusicPicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/google/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 188
    return-void
.end method
