.class public Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "VRSimpleCursorAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIs3GPPEnabled:Z

.field private mListType:I

.field public mSelectedItem:J

.field private mThemeColorStateList:Landroid/content/res/ColorStateList;

.field private mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

.field private mVoiceSingleShare:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter "context"
    .parameter "layout"
    .parameter "listType"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 43
    const-string v0, "VRSimpleCursorAdapter"

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mContext:Landroid/content/Context;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mSelectedItem:J

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mIs3GPPEnabled:Z

    .line 58
    iput p3, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    .line 59
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    .line 61
    return-void
.end method

.method private getDateFormatByFormatSetting(J)Ljava/lang/String;
    .registers 7
    .parameter "date"

    .prologue
    .line 194
    const-string v0, ""

    .line 196
    .local v0, dateString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 197
    .local v1, shortDateFormat:Ljava/text/DateFormat;
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .registers 15
    .parameter "timeMs"

    .prologue
    .line 181
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 182
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 183
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 184
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 186
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_3d

    .line 187
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    :goto_3c
    return-object v8

    :cond_3d
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3c
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    move-object/from16 v18, p2

    .line 66
    check-cast v18, Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    .line 70
    :cond_18
    :goto_18
    if-nez p3, :cond_3f

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "bindview : cursor is null"

    invoke-static/range {v18 .. v19}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_25
    :goto_25
    return-void

    .line 67
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    move-object/from16 v18, p2

    .line 68
    check-cast v18, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceSingleShare:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    goto :goto_18

    .line 75
    :cond_3f
    const-wide/16 v8, 0x0

    .line 77
    .local v8, duration:J
    const-wide/16 v5, 0x0

    .line 78
    .local v5, date:J
    const-wide/16 v12, -0x1

    .line 82
    .local v12, id:J
    :try_start_45
    const-string v18, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 83
    const-string v18, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, title:Ljava/lang/String;
    const-string v18, "date_modified"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 85
    const-string v18, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 86
    const-string v18, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9e
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_45 .. :try_end_9e} :catch_1af

    move-result-object v14

    .line 92
    .local v14, mimeType:Ljava/lang/String;
    const v18, 0x7f090041

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 93
    .local v17, titleText:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v18, 0x7f090042

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 96
    .local v7, dateText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getDateFormatByFormatSetting(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v18, 0x7f090043

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 99
    .local v10, durationText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v18, 0x7f09004e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 102
    .local v3, _playState:Landroid/widget/ImageView;
    const v18, 0x7f09004d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    .local v2, _playIcon:Landroid/widget/TextView;
    const v18, 0x7f09004b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 106
    .local v4, checkBox:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1fd

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v18

    if-eqz v18, :cond_1cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-nez v18, :cond_1cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_169

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v18

    if-eqz v18, :cond_1cf

    .line 111
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceClip:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_1b5

    .line 117
    const v18, 0x7f020024

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060020

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 87
    .end local v2           #_playIcon:Landroid/widget/TextView;
    .end local v3           #_playState:Landroid/widget/ImageView;
    .end local v4           #checkBox:Landroid/widget/CheckBox;
    .end local v7           #dateText:Landroid/widget/TextView;
    .end local v10           #durationText:Landroid/widget/TextView;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #titleText:Landroid/widget/TextView;
    :catch_1af
    move-exception v11

    .line 88
    .local v11, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v11}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_25

    .line 120
    .end local v11           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v2       #_playIcon:Landroid/widget/TextView;
    .restart local v3       #_playState:Landroid/widget/ImageView;
    .restart local v4       #checkBox:Landroid/widget/CheckBox;
    .restart local v7       #dateText:Landroid/widget/TextView;
    .restart local v10       #durationText:Landroid/widget/TextView;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #titleText:Landroid/widget/TextView;
    :cond_1b5
    const v18, 0x7f020023

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 124
    :cond_1cf
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f040003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_25

    .line 133
    :cond_1fd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_219

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b6

    .line 134
    :cond_219
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 135
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mIs3GPPEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_26c

    .line 139
    const-string v18, "audio/3gpp"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_281

    .line 140
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 141
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    const v18, -0x777778

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const v18, -0x777778

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const v18, -0x777778

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :cond_26c
    :goto_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_25

    .line 146
    :cond_281
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v18

    if-nez v18, :cond_26c

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f040003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f040003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 150
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_26c

    .line 156
    :cond_2b6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_327

    .line 157
    const v18, 0x7f090044

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    .line 159
    .local v15, radioBtn:Landroid/widget/RadioButton;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 160
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 164
    invoke-virtual {v15}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_307

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceSingleShare:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->getCurrentId()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-nez v18, :cond_2fe

    .line 166
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_25

    .line 168
    :cond_2fe
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_25

    .line 170
    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mVoiceSingleShare:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->getCurrentId()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-nez v18, :cond_31e

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_25

    .line 173
    :cond_31e
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_25

    .line 175
    .end local v15           #radioBtn:Landroid/widget/RadioButton;
    :cond_327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_25

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_25
.end method

.method public set3GPPEnabled(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mIs3GPPEnabled:Z

    .line 204
    return-void
.end method

.method public setCheckedIdArrayList(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, checkedIdArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    .line 208
    return-void
.end method
