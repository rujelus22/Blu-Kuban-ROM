.class public Lcom/sec/android/app/music/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicPicker$QueryHandler;,
        Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field private static mNumberOfTryToPlay:I

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mMediaplayerHandler:Landroid/os/Handler;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/sec/android/app/music/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

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

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 115
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/sec/android/app/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/android/app/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 118
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lcom/sec/android/app/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 182
    sput v3, Lcom/sec/android/app/music/MusicPicker;->mNumberOfTryToPlay:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 130
    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    .line 166
    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedId:J

    .line 175
    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPicker;->mPlayingId:J

    .line 802
    new-instance v0, Lcom/sec/android/app/music/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPicker$1;-><init>(Lcom/sec/android/app/music/MusicPicker;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 827
    new-instance v0, Lcom/sec/android/app/music/MusicPicker$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPicker$2;-><init>(Lcom/sec/android/app/music/MusicPicker;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    sput p0, Lcom/sec/android/app/music/MusicPicker;->mNumberOfTryToPlay:I

    return p0
.end method

.method static synthetic access$004()I
    .registers 1

    .prologue
    .line 70
    sget v0, Lcom/sec/android/app/music/MusicPicker;->mNumberOfTryToPlay:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/music/MusicPicker;->mNumberOfTryToPlay:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicPicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    const/16 v3, 0x2a

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mQueryHandler:Lcom/sec/android/app/music/MusicPicker$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 670
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 678
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 679
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 682
    :cond_2d
    if-eqz p1, :cond_41

    .line 684
    :try_start_2f
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2f .. :try_end_3f} :catch_5b

    move-result-object v0

    .line 694
    :goto_40
    return-object v0

    .line 689
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 690
    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mQueryHandler:Lcom/sec/android/app/music/MusicPicker$QueryHandler;

    sget-object v6, Lcom/sec/android/app/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v4, v11

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    move-object v0, v11

    .line 694
    goto :goto_40

    .line 686
    :catch_5b
    move-exception v0

    goto :goto_59
.end method

.method makeListShown()V
    .registers 3

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_2b

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListShown:Z

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_2b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c006c

    if-ne v0, v1, :cond_24

    .line 793
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 794
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->finish()V

    .line 800
    :cond_23
    :goto_23
    return-void

    .line 797
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c006d

    if-ne v0, v1, :cond_23

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->finish()V

    goto :goto_23
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 758
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v1, p1, :cond_29

    .line 759
    const-string v1, "MusicPicker"

    const-string v2, "onCompletion"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 761
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 762
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 763
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPicker;->mPlayingId:J

    .line 764
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.RingtonePickerActivity.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v0, musicIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 772
    .end local v0           #musicIntent:Landroid/content/Intent;
    :cond_29
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 459
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 461
    new-instance v0, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 463
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->requestWindowFeature(I)Z

    .line 465
    const/4 v11, 0x1

    .line 466
    .local v11, sortMode:I
    if-nez p1, :cond_d1

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 477
    :goto_24
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 478
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 488
    :cond_38
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->setContentView(I)V

    .line 490
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 494
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 496
    new-instance v0, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    const v4, 0x7f03001e

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v12, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;-><init>(Lcom/sec/android/app/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 504
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 506
    new-instance v0, Lcom/sec/android/app/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/music/MusicPicker$QueryHandler;-><init>(Lcom/sec/android/app/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mQueryHandler:Lcom/sec/android/app/music/MusicPicker$QueryHandler;

    .line 508
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 509
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 511
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_cd

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 520
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 521
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 522
    .local v9, idx:I
    if-ltz v9, :cond_b6

    .line 523
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 525
    :cond_b6
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 526
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 533
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedId:J

    .line 540
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_cd
    invoke-virtual {p0, v11}, Lcom/sec/android/app/music/MusicPicker;->setSortMode(I)Z

    .line 541
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_d0
    return-void

    .line 470
    :cond_d1
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 473
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 474
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPicker;->mListHasFocus:Z

    .line 475
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_24

    .line 480
    :cond_f3
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_38

    .line 482
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->finish()V

    goto :goto_d0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.RingtonePickerActivity.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, musicIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 605
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 606
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v5, 0x3e8

    .line 699
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.RingtonePickerActivity.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, musicIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-nez v1, :cond_36

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 722
    :goto_35
    return-void

    .line 721
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->setSelected()V

    goto :goto_35
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 551
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 552
    const/4 v0, 0x1

    .line 554
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
    .line 580
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    .line 582
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 545
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 546
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 547
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 570
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 574
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    const-string v0, "sortMode"

    iget v1, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPicker;->mAdapter:Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 594
    return-void
.end method

.method setSelected()V
    .registers 9

    .prologue
    .line 725
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 726
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 727
    .local v2, newId:J
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 729
    iput-wide v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedId:J

    .line 730
    iget-wide v5, p0, Lcom/sec/android/app/music/MusicPicker;->mPlayingId:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_22

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_65

    .line 731
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    .line 732
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 734
    :try_start_2c
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 735
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 736
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 737
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 738
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 739
    iput-wide v2, p0, Lcom/sec/android/app/music/MusicPicker;->mPlayingId:J

    .line 740
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_51} :catch_52

    .line 754
    :cond_51
    :goto_51
    return-void

    .line 741
    :catch_52
    move-exception v0

    .line 744
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.RingtonePickerActivity.stop"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .local v1, musicIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    const-string v5, "MusicPicker"

    const-string v6, "Unable to play track"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 750
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #musicIntent:Landroid/content/Intent;
    :cond_65
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_51

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->stopMediaPlayer()V

    .line 752
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_51
.end method

.method setSortMode(I)Z
    .registers 6
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 613
    iget v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_a

    .line 614
    packed-switch p1, :pswitch_data_2a

    :cond_a
    move v0, v1

    .line 638
    :goto_b
    return v0

    .line 616
    :pswitch_c
    iput p1, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    .line 617
    const-string v2, "title_key"

    iput-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 618
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 621
    :pswitch_16
    iput p1, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    .line 622
    const-string v2, "album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 625
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 628
    :pswitch_20
    iput p1, p0, Lcom/sec/android/app/music/MusicPicker;->mSortMode:I

    .line 629
    const-string v2, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/sec/android/app/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 633
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_b

    .line 614
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .registers 4

    .prologue
    .line 775
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_26

    .line 776
    const-string v1, "MusicPicker"

    const-string v2, "stopMediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 779
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 780
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPicker;->mPlayingId:J

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.RingtonePickerActivity.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, musicIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 788
    .end local v0           #musicIntent:Landroid/content/Intent;
    :cond_26
    return-void
.end method
