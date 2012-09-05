.class public Lcom/google/android/music/ringtone/SeekTest;
.super Ljava/lang/Object;
.source "SeekTest.java"


# static fields
.field private static SILENCE_MP3_FRAME:[B

.field static after:J

.field static before:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 194
    const/16 v0, 0x68

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/music/ringtone/SeekTest;->SILENCE_MP3_FRAME:[B

    return-void

    :array_a
    .array-data 0x1
        0xfft
        0xfbt
        0x10t
        0xc4t
        0x0t
        0x3t
        0x81t
        0xf4t
        0x1t
        0x26t
        0x60t
        0x0t
        0x40t
        0x20t
        0x59t
        0x80t
        0x23t
        0x48t
        0x0t
        0x9t
        0x74t
        0x0t
        0x1t
        0x12t
        0x3t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfet
        0x9ft
        0x63t
        0xbft
        0xd1t
        0x7at
        0x3ft
        0x5dt
        0x1t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfet
        0x8dt
        0xadt
        0x6ct
        0x31t
        0x42t
        0xc3t
        0x2t
        0xc7t
        0xct
        0x9t
        0x86t
        0x83t
        0xa8t
        0x7at
        0x3at
        0x68t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x38t
        0x2et
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CanSeekAccurately(Landroid/content/SharedPreferences;)Z
    .registers 33
    .parameter "prefs"

    .prologue
    .line 53
    const-string v4, "Ringdroid"

    const-string v26, "Running CanSeekAccurately"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v22, 0x0

    .line 56
    .local v22, result:Z
    const-string v4, "seek_test_result"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 57
    const-string v4, "seek_test_date"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 58
    .local v24, testDate:J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 59
    .local v15, now:J
    const-wide/32 v18, 0x240c8400

    .line 61
    .local v18, oneWeekMS:J
    sub-long v26, v15, v24

    cmp-long v4, v26, v18

    if-gez v4, :cond_56

    .line 62
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Fast MP3 seek result cached: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v22

    .line 191
    :goto_55
    return v4

    .line 66
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/sdcard/silence"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v26, Ljava/util/Random;

    invoke-direct/range {v26 .. v26}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/Random;->nextLong()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, ".mp3"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 67
    .local v13, filename:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v12, file:Ljava/io/File;
    const/16 v17, 0x0

    .line 70
    .local v17, ok:Z
    :try_start_85
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v26, "r"

    move-object/from16 v0, v26

    invoke-direct {v4, v12, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8e} :catch_9b

    .line 76
    :goto_8e
    if-nez v17, :cond_9f

    .line 77
    const-string v4, "Ringdroid"

    const-string v26, "Couldn\'t find temporary filename"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v4, 0x0

    goto :goto_55

    .line 71
    :catch_9b
    move-exception v11

    .line 73
    .local v11, e:Ljava/lang/Exception;
    const/16 v17, 0x1

    goto :goto_8e

    .line 81
    .end local v11           #e:Ljava/lang/Exception;
    :cond_9f
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Writing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_bb
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_e1

    .line 92
    :try_start_be
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v20, out:Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_c6
    const/16 v4, 0x50

    if-ge v14, v4, :cond_fe

    .line 94
    sget-object v4, Lcom/google/android/music/ringtone/SeekTest;->SILENCE_MP3_FRAME:[B

    const/16 v26, 0x0

    sget-object v27, Lcom/google/android/music/ringtone/SeekTest;->SILENCE_MP3_FRAME:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_de} :catch_ee

    .line 93
    add-int/lit8 v14, v14, 0x1

    goto :goto_c6

    .line 85
    .end local v14           #i:I
    .end local v20           #out:Ljava/io/FileOutputStream;
    :catch_e1
    move-exception v11

    .line 87
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v4, "Ringdroid"

    const-string v26, "Couldn\'t output for writing"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v4, 0x0

    goto/16 :goto_55

    .line 96
    .end local v11           #e:Ljava/lang/Exception;
    :catch_ee
    move-exception v11

    .line 97
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v4, "Ringdroid"

    const-string v26, "Couldn\'t write temp silence file"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_f8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_2e6

    .line 101
    :goto_fb
    const/4 v4, 0x0

    goto/16 :goto_55

    .line 105
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v14       #i:I
    .restart local v20       #out:Ljava/io/FileOutputStream;
    :cond_fe
    :try_start_fe
    const-string v4, "Ringdroid"

    const-string v26, "File written, starting to play"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 107
    .local v3, player:Landroid/media/MediaPlayer;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 108
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v23, subsetInputStream:Ljava/io/FileInputStream;
    sget-object v4, Lcom/google/android/music/ringtone/SeekTest;->SILENCE_MP3_FRAME:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x46

    int-to-long v5, v4

    .line 110
    .local v5, start:J
    sget-object v4, Lcom/google/android/music/ringtone/SeekTest;->SILENCE_MP3_FRAME:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0xa

    int-to-long v7, v4

    .line 111
    .local v7, len:J
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 114
    const-string v4, "Ringdroid"

    const-string v26, "Preparing"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 116
    const-wide/16 v26, 0x0

    sput-wide v26, Lcom/google/android/music/ringtone/SeekTest;->before:J

    .line 117
    const-wide/16 v26, 0x0

    sput-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    .line 118
    new-instance v4, Lcom/google/android/music/ringtone/SeekTest$1;

    invoke-direct {v4}, Lcom/google/android/music/ringtone/SeekTest$1;-><init>()V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 125
    const-string v4, "Ringdroid"

    const-string v26, "Starting"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 128
    const/4 v14, 0x0

    :goto_153
    const/16 v4, 0xc8

    if-ge v14, v4, :cond_195

    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->before:J

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-nez v4, :cond_195

    .line 129
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    if-lez v4, :cond_18d

    .line 130
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Started playing after "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-int/lit8 v27, v14, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sput-wide v26, Lcom/google/android/music/ringtone/SeekTest;->before:J

    .line 134
    :cond_18d
    const-wide/16 v26, 0xa

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 128
    add-int/lit8 v14, v14, 0x1

    goto :goto_153

    .line 136
    :cond_195
    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->before:J

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-nez v4, :cond_1cd

    .line 137
    const-string v4, "Ringdroid"

    const-string v26, "Never started playing."

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v4, "Ringdroid"

    const-string v26, "Fast MP3 seek disabled by default"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_1af} :catch_29d

    .line 140
    :try_start_1af
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b2} :catch_2e9

    .line 143
    :goto_1b2
    :try_start_1b2
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 144
    .local v21, prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "seek_test_date"

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v4, "seek_test_result"

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    const/4 v4, 0x0

    goto/16 :goto_55

    .line 151
    .end local v21           #prefsEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1cd
    const-string v4, "Ringdroid"

    const-string v26, "Sleeping"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v14, 0x0

    :goto_1d7
    const/16 v4, 0x12c

    if-ge v14, v4, :cond_209

    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-nez v4, :cond_209

    .line 153
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pos: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-wide/16 v26, 0xa

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 152
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d7

    .line 157
    :cond_209
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Result: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-wide v27, Lcom/google/android/music/ringtone/SeekTest;->before:J

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-wide v27, Lcom/google/android/music/ringtone/SeekTest;->after:J

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    sget-wide v28, Lcom/google/android/music/ringtone/SeekTest;->before:J

    cmp-long v4, v26, v28

    if-lez v4, :cond_293

    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    sget-wide v28, Lcom/google/android/music/ringtone/SeekTest;->before:J

    const-wide/16 v30, 0x7d0

    add-long v28, v28, v30

    cmp-long v4, v26, v28

    if-gez v4, :cond_293

    .line 160
    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    sget-wide v28, Lcom/google/android/music/ringtone/SeekTest;->before:J

    cmp-long v4, v26, v28

    if-lez v4, :cond_290

    sget-wide v26, Lcom/google/android/music/ringtone/SeekTest;->after:J

    sget-wide v28, Lcom/google/android/music/ringtone/SeekTest;->before:J

    sub-long v9, v26, v28

    .line 161
    .local v9, delta:J
    :goto_253
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Fast MP3 seek enabled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_26f} :catch_29d

    .line 162
    const/16 v22, 0x1

    .line 182
    .end local v9           #delta:J
    :goto_271
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 183
    .restart local v21       #prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "seek_test_date"

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v4, "seek_test_result"

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    :try_start_289
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_28c} :catch_2ee

    :goto_28c
    move/from16 v4, v22

    .line 191
    goto/16 :goto_55

    .line 160
    .end local v21           #prefsEditor:Landroid/content/SharedPreferences$Editor;
    :cond_290
    const-wide/16 v9, -0x1

    goto :goto_253

    .line 164
    :cond_293
    :try_start_293
    const-string v4, "Ringdroid"

    const-string v26, "Fast MP3 seek disabled"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_29c} :catch_29d

    goto :goto_271

    .line 166
    .end local v3           #player:Landroid/media/MediaPlayer;
    .end local v5           #start:J
    .end local v7           #len:J
    .end local v23           #subsetInputStream:Ljava/io/FileInputStream;
    :catch_29d
    move-exception v11

    .line 167
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string v4, "Ringdroid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Couldn\'t play: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "Ringdroid"

    const-string v26, "Fast MP3 seek disabled by default"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_2c8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_2cb} :catch_2ec

    .line 174
    :goto_2cb
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 175
    .restart local v21       #prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "seek_test_date"

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v4, "seek_test_result"

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    const/4 v4, 0x0

    goto/16 :goto_55

    .line 100
    .end local v14           #i:I
    .end local v20           #out:Ljava/io/FileOutputStream;
    .end local v21           #prefsEditor:Landroid/content/SharedPreferences$Editor;
    :catch_2e6
    move-exception v4

    goto/16 :goto_fb

    .line 141
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    .restart local v5       #start:J
    .restart local v7       #len:J
    .restart local v14       #i:I
    .restart local v20       #out:Ljava/io/FileOutputStream;
    .restart local v23       #subsetInputStream:Ljava/io/FileInputStream;
    :catch_2e9
    move-exception v4

    goto/16 :goto_1b2

    .line 172
    .end local v3           #player:Landroid/media/MediaPlayer;
    .end local v5           #start:J
    .end local v7           #len:J
    .end local v23           #subsetInputStream:Ljava/io/FileInputStream;
    .restart local v11       #e:Ljava/lang/Exception;
    :catch_2ec
    move-exception v4

    goto :goto_2cb

    .line 189
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #player:Landroid/media/MediaPlayer;
    .restart local v5       #start:J
    .restart local v7       #len:J
    .restart local v21       #prefsEditor:Landroid/content/SharedPreferences$Editor;
    .restart local v23       #subsetInputStream:Ljava/io/FileInputStream;
    :catch_2ee
    move-exception v4

    goto :goto_28c
.end method
