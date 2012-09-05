.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionShareSingleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCurrentSelectedId:J

.field private mCursor:Landroid/database/Cursor;

.field private mEventHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

.field private mListType:I

.field private mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

.field private mVoiceArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mtoast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    .line 55
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListType:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mtoast:Landroid/widget/Toast;

    .line 93
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 204
    const-string v1, "VoiceListOptionShareSingleActivity"

    const-string v2, "initView"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 206
    .local v0, selectAll:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    .line 209
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 212
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->setSoftKeyEffect()V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    const/high16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    return-void
.end method


# virtual methods
.method public createClipArrayList()V
    .registers 6

    .prologue
    .line 186
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_c

    .line 187
    const-string v3, "VoiceListOptionShareSingleActivity"

    const-string v4, "mCursor is null!"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_b
    return-void

    .line 191
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 197
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 198
    .local v1, id:J
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method public getCurrentId()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    return-wide v0
.end method

.method public listBinding()V
    .registers 15

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x0

    .line 135
    const-string v0, "VoiceListOptionShareSingleActivity"

    const-string v1, "listBinding E"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-array v10, v2, [I

    fill-array-data v10, :array_f2

    .line 138
    .local v10, viewIds:[I
    const v6, 0x7f030016

    .line 140
    .local v6, layoutId:I
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    .line 141
    const-string v0, "VoiceListOptionShareSingleActivity"

    const-string v1, "Closing previously opened cursor."

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 143
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    .line 147
    :cond_23
    const/4 v3, 0x0

    .line 148
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
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

    .line 155
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    new-array v9, v2, [Ljava/lang/String;

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

    .line 161
    .local v9, cols:[Ljava/lang/String;
    :try_start_66
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_76} :catch_85
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_66 .. :try_end_76} :catch_a1

    .line 171
    :goto_76
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_bd

    .line 172
    const-string v0, "VoiceListOptionShareSingleActivity"

    const-string v1, "listBinding cusor null"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->finish()V

    .line 183
    :goto_84
    return-void

    .line 163
    :catch_85
    move-exception v12

    .line 164
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VoiceListOptionShareSingleActivity"

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

    .line 165
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_76

    .line 166
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_a1
    move-exception v13

    .line 167
    .local v13, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "VoiceListOptionShareSingleActivity"

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

    .line 168
    iput-object v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_76

    .line 177
    .end local v13           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_bd
    const-string v0, "VoiceListOptionShareSingleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - mCursor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v4, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    iget v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListType:I

    iget-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->createClipArrayList()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_84

    .line 137
    :array_f2
    .array-data 0x4
        0x41t 0x0t 0x9t 0x7ft
        0x42t 0x0t 0x9t 0x7ft
        0x43t 0x0t 0x9t 0x7ft
        0x44t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "VoiceListOptionShareSingleActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->setContentView(I)V

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListType:I

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->initView()V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->listBinding()V

    .line 76
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, viewAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput-wide p4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetInvalidated()V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->setSoftKeyEffect()V

    .line 274
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 127
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->finish()V

    .line 129
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 131
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    const-string v0, "VoiceListOptionShareSingleActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    if-eqz v0, :cond_13

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 91
    :cond_13
    return-void
.end method

.method public setSoftKeyEffect()V
    .registers 5

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    :goto_12
    return-void

    .line 240
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mSoftKey:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_12
.end method

.method public softkeyShare(Landroid/view/View;)V
    .registers 8
    .parameter "target"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, file:Ljava/lang/String;
    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 248
    const v2, 0x7f06001b

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mtoast:Landroid/widget/Toast;

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mtoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 262
    :goto_18
    return-void

    .line 255
    :cond_19
    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    invoke-static {p0, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, result:Landroid/content/Intent;
    const-string v2, "id"

    iget-wide v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->mCurrentSelectedId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    const-string v2, "FILE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->setResult(ILandroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->finish()V

    goto :goto_18
.end method
