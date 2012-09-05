.class public Lcom/sec/android/app/lcdtest/lcdtest;
.super Landroid/app/Activity;
.source "lcdtest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private isSpeakerTestOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultMusicVolume:I

.field private mRingtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private FrontCameraImageViewTest(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/CameraImageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string v1, "bg_filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "frontcam"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method private FrontCameraImageViewTest([B)V
    .registers 5
    .parameter

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/CameraImageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const-string v1, "capture_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 261
    const-string v1, "frontcam"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method private MegaCameraImageViewTest(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/CameraImageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v1, "bg_filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "frontcam"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method private MegaCameraImageViewTest([B)V
    .registers 5
    .parameter

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/CameraImageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const-string v1, "capture_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 254
    const-string v1, "frontcam"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method private init()V
    .registers 18

    .prologue
    .line 40
    const v15, 0x7f080005

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 41
    .local v7, redbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v15, 0x7f080006

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 43
    .local v4, greenbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v15, 0x7f080007

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, aboutButton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v15, 0x7f080008

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 47
    .local v6, receiverButton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v15, 0x7f080009

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 49
    .local v14, vibrationbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v15, 0x7f080003

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, dimmingbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v15, 0x7f08000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 53
    .local v5, megacambutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v15, 0x7f08000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 55
    .local v8, sensorbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v15, 0x7f08000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 57
    .local v11, touchbutton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v15, 0x7f08000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 59
    .local v12, touchsleep:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v15, 0x7f08000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 61
    .local v10, subkey:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v15, 0x7f08000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 63
    .local v9, speaker:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v15, 0x7f080010

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, frontcam:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/lcdtest/lcdtest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 69
    const-string v15, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/lcdtest/lcdtest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/lcdtest/lcdtest;->mDefaultMusicVolume:I

    .line 71
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v13

    .line 73
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    .line 75
    return-void
.end method

.method private speakerMelodyTest()V
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->isSpeakerTestOn:Z

    if-nez v0, :cond_8

    .line 170
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/lcdtest;->speakerTestStart()V

    .line 174
    :goto_7
    return-void

    .line 172
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/lcdtest;->speakerTestStop()V

    goto :goto_7
.end method

.method private speakerTestStart()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_6

    .line 185
    :goto_5
    return-void

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mDefaultMusicVolume:I

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->isSpeakerTestOn:Z

    goto :goto_5
.end method

.method private speakerTestStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_6

    .line 193
    :goto_5
    return-void

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/lcdtest/lcdtest;->mDefaultMusicVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 192
    iput-boolean v3, p0, Lcom/sec/android/app/lcdtest/lcdtest;->isSpeakerTestOn:Z

    goto :goto_5
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 197
    const-string v2, "LCDTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sparse-switch p1, :sswitch_data_7e

    .line 234
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    return-void

    .line 204
    :sswitch_2a
    if-ne p2, v5, :cond_26

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/lcdtest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 206
    const-string v2, "capture_data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 207
    .local v1, image:[B
    if-eqz v1, :cond_26

    .line 208
    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/lcdtest;->MegaCameraImageViewTest([B)V

    goto :goto_26

    .line 211
    .end local v1           #image:[B
    :cond_48
    const-string v2, "data_filepath"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, filePath:Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 213
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->MegaCameraImageViewTest(Ljava/lang/String;)V

    goto :goto_26

    .line 219
    .end local v0           #filePath:Ljava/lang/String;
    :sswitch_54
    if-ne p2, v5, :cond_26

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/lcdtest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 221
    const-string v2, "capture_data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 222
    .restart local v1       #image:[B
    if-eqz v1, :cond_26

    .line 223
    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/lcdtest;->FrontCameraImageViewTest([B)V

    goto :goto_26

    .line 226
    .end local v1           #image:[B
    :cond_72
    const-string v2, "data_filepath"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0       #filePath:Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 228
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->FrontCameraImageViewTest(Ljava/lang/String;)V

    goto :goto_26

    .line 202
    :sswitch_data_7e
    .sparse-switch
        0x7f08000a -> :sswitch_2a
        0x7f080010 -> :sswitch_54
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e6

    .line 166
    :goto_7
    :pswitch_7
    return-void

    .line 98
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_red;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 102
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_green;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 106
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_blue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 110
    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_receiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 114
    :pswitch_34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_vibration;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 118
    :pswitch_3f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_dimming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 122
    :pswitch_4a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/lcdtest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 124
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :goto_66
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const v1, 0x7f08000a

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 127
    :cond_73
    const-string v1, "com.sec.android.app.factorytest"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_66

    .line 134
    :pswitch_7b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 138
    :pswitch_86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_touch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 142
    :pswitch_92
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_7

    .line 146
    :pswitch_a3
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/lcdtest;->speakerMelodyTest()V

    goto/16 :goto_7

    .line 149
    :pswitch_a8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/button_subkey;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 153
    :pswitch_b4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/lcdtest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 155
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :goto_d0
    const-string v1, "camera_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const v1, 0x7f080010

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/lcdtest/lcdtest;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 158
    :cond_de
    const-string v1, "com.sec.android.app.factorytest"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d0

    .line 96
    :pswitch_data_e6
    .packed-switch 0x7f080003
        :pswitch_3f
        :pswitch_7
        :pswitch_8
        :pswitch_13
        :pswitch_1e
        :pswitch_29
        :pswitch_34
        :pswitch_4a
        :pswitch_7b
        :pswitch_86
        :pswitch_92
        :pswitch_a3
        :pswitch_a8
        :pswitch_b4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/lcdtest;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/lcdtest;->init()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/lcdtest;->isSpeakerTestOn:Z

    .line 36
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 78
    const/16 v1, 0x18

    if-ne p1, v1, :cond_d

    .line 79
    const-string v1, "LCDTest"

    const-string v2, "Side_key Volume_Up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_c
    return v0

    .line 81
    :cond_d
    const/16 v1, 0x19

    if-ne p1, v1, :cond_19

    .line 82
    const-string v1, "LCDTest"

    const-string v2, "Side_key Volume_Down"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 85
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/lcdtest;->speakerTestStop()V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    return-void
.end method
