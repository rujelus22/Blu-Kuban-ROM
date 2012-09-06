.class public Lcom/google/android/music/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPicker$QueryHandler;,
        Lcom/google/android/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/google/android/music/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 93
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 95
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    .line 132
    iput-wide v1, p0, Lcom/google/android/music/MusicPicker;->mSelectedId:J

    .line 138
    iput-wide v1, p0, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    .line 316
    return-void
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPicker;->mQueryHandler:Lcom/google/android/music/MusicPicker$QueryHandler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 536
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const/4 v5, 0x0

    .line 541
    .local v5, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_9c

    .line 542
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 543
    .local v17, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 544
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v14

    .line 545
    .local v14, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 546
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2e
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_77

    .line 547
    aget-object v1, v17, v15

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, key:Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "\\\\"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 549
    const-string v1, "%"

    const-string v2, "\\%"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 550
    const-string v1, "_"

    const-string v2, "\\_"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    .line 546
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    .line 553
    .end local v16           #key:Ljava/lang/String;
    :cond_77
    const/4 v15, 0x0

    :goto_78
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v15, v1, :cond_9c

    .line 554
    const-string v1, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, "artist_key||"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, "album_key||"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "title_key LIKE ? ESCAPE \'\\\'"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    add-int/lit8 v15, v15, 0x1

    goto :goto_78

    .line 565
    .end local v14           #col:Ljava/text/Collator;
    .end local v15           #i:I
    .end local v17           #searchWords:[Ljava/lang/String;
    :cond_9c
    if-eqz p1, :cond_b3

    .line 567
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9e .. :try_end_b1} :catch_dc

    move-result-object v1

    .line 577
    :goto_b2
    return-object v1

    .line 572
    :cond_b3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 573
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MusicPicker;->mQueryHandler:Lcom/google/android/music/MusicPicker$QueryHandler;

    const/16 v7, 0x2a

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v10, Lcom/google/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v12, v5

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_da
    const/4 v1, 0x0

    goto :goto_b2

    .line 569
    :catch_dc
    move-exception v1

    goto :goto_da
.end method

.method makeListShown()V
    .registers 3

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_2b

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPicker;->mListShown:Z

    .line 514
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 516
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 519
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :cond_2b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 652
    :cond_7
    :goto_7
    return-void

    .line 642
    :pswitch_8
    iget-wide v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 643
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->finish()V

    goto :goto_7

    .line 649
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->finish()V

    goto :goto_7

    .line 640
    nop

    :pswitch_data_28
    .packed-switch 0x7f10008d
        :pswitch_8
        :pswitch_23
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_18

    .line 622
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 623
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 625
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    .line 626
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 628
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 348
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 350
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->requestWindowFeature(I)Z

    .line 352
    const/4 v11, 0x1

    .line 353
    .local v11, sortMode:I
    if-nez p1, :cond_c6

    .line 354
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 365
    :goto_19
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 366
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 376
    :cond_2d
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->setContentView(I)V

    .line 378
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 382
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 384
    new-instance v0, Lcom/google/android/music/MusicPicker$TrackListAdapter;

    const v4, 0x7f040038

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v12, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/MusicPicker$TrackListAdapter;-><init>(Lcom/google/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    .line 388
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 393
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 395
    new-instance v0, Lcom/google/android/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/google/android/music/MusicPicker$QueryHandler;-><init>(Lcom/google/android/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mQueryHandler:Lcom/google/android/music/MusicPicker$QueryHandler;

    .line 397
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 398
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 400
    const v0, 0x7f10008d

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 401
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v0, 0x7f10008e

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_c2

    .line 408
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 409
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 411
    .local v9, idx:I
    if-ltz v9, :cond_ab

    .line 412
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 414
    :cond_ab
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 415
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 419
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 422
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedId:J

    .line 426
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_c2
    invoke-virtual {p0, v11}, Lcom/google/android/music/MusicPicker;->setSortMode(I)Z

    .line 427
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_c5
    return-void

    .line 357
    :cond_c6
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 361
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 362
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPicker;->mListHasFocus:Z

    .line 363
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_19

    .line 368
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 369
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_2d

    .line 370
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->finish()V

    goto :goto_c5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 443
    const v0, 0x7f0d00a1

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 444
    const/4 v0, 0x2

    const v1, 0x7f0d00de

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 445
    const/4 v0, 0x3

    const v1, 0x7f0d00dd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 446
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 588
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 589
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 435
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 459
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 460
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->stopMediaPlayer()V

    .line 461
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 432
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 453
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 454
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    const-string v0, "sortMode"

    iget v1, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 470
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 471
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mAdapter:Lcom/google/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 472
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .registers 9
    .parameter "c"

    .prologue
    .line 592
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 593
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 594
    .local v1, newId:J
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 596
    iput-wide v1, p0, Lcom/google/android/music/MusicPicker;->mSelectedId:J

    .line 597
    iget-wide v4, p0, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_5b

    .line 598
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->stopMediaPlayer()V

    .line 599
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 601
    :try_start_2c
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 602
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 606
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 607
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 608
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 609
    iput-wide v1, p0, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    .line 610
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_51} :catch_52

    .line 618
    :cond_51
    :goto_51
    return-void

    .line 611
    :catch_52
    move-exception v0

    .line 612
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MusicPicker"

    const-string v5, "Unable to play track"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 614
    .end local v0           #e:Ljava/io/IOException;
    :cond_5b
    iget-object v4, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_51

    .line 615
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->stopMediaPlayer()V

    .line 616
    invoke-virtual {p0}, Lcom/google/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_51
.end method

.method setSortMode(I)Z
    .registers 6
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    iget v2, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_a

    .line 480
    packed-switch p1, :pswitch_data_2a

    :cond_a
    move v0, v1

    .line 504
    :goto_b
    return v0

    .line 482
    :pswitch_c
    iput p1, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    .line 483
    const-string v2, "title_key"

    iput-object v2, p0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 484
    invoke-virtual {p0, v1, v3}, Lcom/google/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 487
    :pswitch_16
    iput p1, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    .line 488
    const-string v2, "album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 491
    invoke-virtual {p0, v1, v3}, Lcom/google/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 494
    :pswitch_20
    iput p1, p0, Lcom/google/android/music/MusicPicker;->mSortMode:I

    .line 495
    const-string v2, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/google/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 499
    invoke-virtual {p0, v1, v3}, Lcom/google/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 480
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    .line 632
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 633
    iget-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 635
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPicker;->mPlayingId:J

    .line 637
    :cond_15
    return-void
.end method
