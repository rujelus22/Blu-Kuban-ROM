.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionRenameActivity.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mEventHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

.field private mListType:I

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListType:I

    .line 80
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private getviewIds()[I
    .registers 4

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, viewIds:[I
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 124
    const/4 v1, 0x0

    const v2, 0x7f090041

    aput v2, v0, v1

    .line 125
    const/4 v1, 0x1

    const v2, 0x7f090042

    aput v2, v0, v1

    .line 126
    const/4 v1, 0x2

    const v2, 0x7f090043

    aput v2, v0, v1

    .line 127
    return-object v0
.end method

.method private initView()V
    .registers 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mRootLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 181
    .local v0, list:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 184
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 186
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public listBinding()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 131
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "listBinding E"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->getviewIds()[I

    move-result-object v10

    .line 134
    .local v10, viewIds:[I
    const v6, 0x7f03001a

    .line 136
    .local v6, layoutId:I
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_21

    .line 137
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "Closing previously opened cursor."

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    .line 143
    :cond_21
    const/4 v3, 0x0

    .line 144
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "duration"

    aput-object v1, v9, v0

    .line 157
    .local v9, cols:[Ljava/lang/String;
    :try_start_65
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_75} :catch_84
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_65 .. :try_end_75} :catch_a0

    .line 167
    :goto_75
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_bc

    .line 168
    const-string v0, "VoiceListOptionRenameActivity"

    const-string v1, "listBinding cusor null"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->finish()V

    .line 176
    :goto_83
    return-void

    .line 159
    :catch_84
    move-exception v12

    .line 160
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - SQLiteException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_75

    .line 162
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_a0
    move-exception v13

    .line 163
    .local v13, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - UnsupportedOperationException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_75

    .line 173
    .end local v13           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_bc
    const-string v0, "VoiceListOptionRenameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - mCursor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v4, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    iget v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListType:I

    iget-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    goto :goto_83
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListType:I

    .line 59
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->setContentView(I)V

    .line 60
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mRootLayout:Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->listBinding()V

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->initView()V

    .line 65
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 115
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 117
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    if-eqz v0, :cond_17

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_17

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->finish()V

    .line 78
    :cond_17
    return-void
.end method
