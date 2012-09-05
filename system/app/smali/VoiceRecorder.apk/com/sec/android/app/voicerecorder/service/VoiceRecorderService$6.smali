.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;
.super Landroid/os/Handler;
.source "VoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 2
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .parameter "msg"

    .prologue
    .line 1045
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 1047
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_388

    .line 1213
    :cond_d
    :goto_d
    :sswitch_d
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1214
    :goto_10
    return-void

    .line 1050
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1052
    :cond_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 1053
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->onDestroy()V

    goto :goto_d

    .line 1058
    :sswitch_42
    const-string v1, "command"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_d

    .line 1059
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto :goto_d

    .line 1064
    :sswitch_64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerNotification()Z

    goto :goto_d

    .line 1069
    :sswitch_73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_d

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto/16 :goto_d

    .line 1076
    :sswitch_96
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1078
    .local v7, action:Ljava/lang/String;
    const-string v1, "com.sec.android.app.voicerecorder.rec"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumeRecording()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005c

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_d

    .line 1082
    :cond_bd
    const-string v1, "com.sec.android.app.voicerecorder.rec_pause"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pauseRecording()Z

    goto/16 :goto_d

    .line 1084
    :cond_ce
    const-string v1, "com.sec.android.app.voicerecorder.rec_save"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1085
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto/16 :goto_d

    .line 1086
    :cond_df
    const-string v1, "com.sec.android.app.voicerecorder.play"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_103

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 1089
    :cond_103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v14, 0x7f06005d

    invoke-virtual {v2, v14}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 1092
    :cond_11c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 1093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumePlay()V

    goto/16 :goto_d

    .line 1096
    :cond_12f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_16c

    .line 1097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v14, v2

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J
    invoke-static {v1, v14, v15}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1402(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;J)J

    .line 1122
    :cond_155
    :goto_155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J
    invoke-static {v14}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1400(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startPlay(Landroid/net/Uri;)Z

    goto/16 :goto_d

    .line 1099
    :cond_16c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1102
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1103
    .local v12, title:Ljava/lang/String;
    if-eqz v8, :cond_155

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 1105
    :goto_18b
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1106
    .local v9, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J
    invoke-static {v1, v14, v15}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1402(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;J)J

    .line 1107
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1108
    .local v13, titleIndex:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1109
    const-string v1, "date_modified"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1110
    .local v11, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1500(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1600(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d3

    :cond_1cd
    invoke-interface {v8}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 1116
    :cond_1d3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_155

    .line 1114
    :cond_1d8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_18b

    .line 1131
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #index:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    .end local v13           #titleIndex:I
    :cond_1dc
    const-string v1, "com.sec.android.app.voicerecorder.play_pause"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 1132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto/16 :goto_d

    .line 1133
    :cond_1ed
    const-string v1, "com.sec.android.app.voicerecorder.play_stop"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    goto/16 :goto_d

    .line 1135
    :cond_1fe
    const-string v1, "com.sec.android.app.voicerecorder.rec_new"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20e

    const-string v1, "com.sec.android.app.voicerecorder.standby"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1138
    :cond_20e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 1140
    :cond_22a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v14, 0x7f060033

    invoke-virtual {v2, v14}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 1144
    :cond_243
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkAvailableStorage(Z)Z

    move-result v1

    if-eqz v1, :cond_2b7

    .line 1146
    sget-wide v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    const-wide v14, 0xffffffffL

    cmp-long v1, v1, v14

    if-lez v1, :cond_25f

    .line 1147
    const-wide v1, 0xffffffffL

    sput-wide v1, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 1148
    :cond_25f
    sget-wide v3, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 1150
    .local v3, size:J
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26c

    .line 1151
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getMMSSize()J

    move-result-wide v3

    .line 1154
    :cond_26c
    const/4 v5, -0x1

    .line 1157
    .local v5, recordTime:I
    const/4 v6, 0x0

    .line 1158
    .local v6, isHighQuality:Z
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getAudioFormat()Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/3gpp"

    if-ne v1, v2, :cond_2a4

    .line 1159
    const/4 v6, 0x1

    .line 1164
    :goto_27b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->initRecording(ZJIZ)Z

    move-result v1

    if-eqz v1, :cond_2a6

    .line 1165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startRecording()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005c

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_d

    .line 1161
    :cond_2a4
    const/4 v6, 0x0

    goto :goto_27b

    .line 1170
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005c

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_d

    .line 1173
    .end local v3           #size:J
    .end local v5           #recordTime:I
    .end local v6           #isHighQuality:Z
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isMounted(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2e1

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060032

    const/4 v14, 0x1

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 1179
    :goto_2d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    goto/16 :goto_d

    .line 1177
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003d

    const/4 v14, 0x1

    invoke-static {v1, v2, v14}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_2d8

    .line 1188
    .end local v7           #action:Ljava/lang/String;
    :sswitch_2f1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_309

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_310

    .line 1189
    :cond_309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    .line 1191
    :cond_310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    .line 1193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1102(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z

    goto/16 :goto_d

    .line 1197
    :sswitch_32b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_343

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_34a

    .line 1198
    :cond_343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    .line 1200
    :cond_34a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    goto/16 :goto_d

    .line 1204
    :sswitch_35d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_371

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_378

    .line 1205
    :cond_371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 1206
    :cond_378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->release()V

    goto/16 :goto_d

    .line 1047
    :sswitch_data_388
    .sparse-switch
        0xfaa -> :sswitch_42
        0xfb4 -> :sswitch_64
        0xfbe -> :sswitch_73
        0xfc8 -> :sswitch_96
        0xfd2 -> :sswitch_11
        0xfd3 -> :sswitch_11
        0xfd4 -> :sswitch_35d
        0xfdc -> :sswitch_d
        0xfdd -> :sswitch_2f1
        0xfde -> :sswitch_2f1
        0xff0 -> :sswitch_32b
    .end sparse-switch
.end method
