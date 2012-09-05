.class public Lcom/sec/android/app/callsetting/videocall/VideoCall;
.super Landroid/preference/PreferenceActivity;
.source "VideoCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mFailoption:Landroid/preference/CheckBoxPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreset:Landroid/preference/PreferenceScreen;

.field private mSenderIsVideoCall:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowme:Landroid/preference/CheckBoxPreference;

.field private mVBarring:Landroid/preference/PreferenceScreen;

.field private mVForwarding:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z

    .line 139
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCall$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall$1;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/videocall/VideoCall;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v7, 0x7f040006

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    const-string v7, "showme_preference"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mShowme:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v7, "failoption_preference"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mFailoption:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v7, "preset_image"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mPreset:Landroid/preference/PreferenceScreen;

    .line 75
    const-string v7, "video_forwarding"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVForwarding:Landroid/preference/PreferenceScreen;

    .line 76
    const-string v7, "video_barring"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVBarring:Landroid/preference/PreferenceScreen;

    .line 79
    :try_start_45
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 80
    .local v5, myResources:Landroid/content/res/Resources;
    const v7, 0x7f02000b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_85

    move-result-object v3

    .line 83
    .local v3, is:Ljava/io/InputStream;
    :try_start_50
    new-instance v4, Ljava/io/File;

    const-string v7, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, mdefaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_77

    .line 86
    const-string v7, "preset_defaultimage.png"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_63} :catch_80

    move-result-object v6

    .line 90
    .local v6, os:Ljava/io/OutputStream;
    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v1, v7, [B

    .line 92
    .local v1, data:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 93
    .local v0, count:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_74

    .line 94
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_7b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_64 .. :try_end_74} :catch_8a

    .line 102
    .end local v0           #count:I
    .end local v1           #data:[B
    :cond_74
    :goto_74
    :try_start_74
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_80

    .line 107
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v6           #os:Ljava/io/OutputStream;
    :cond_77
    :goto_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_85

    .line 112
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :goto_7a
    return-void

    .line 96
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #mdefaultFile:Ljava/io/File;
    .restart local v5       #myResources:Landroid/content/res/Resources;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catch_7b
    move-exception v2

    .line 98
    .local v2, e:Ljava/io/IOException;
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_74

    .line 104
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v6           #os:Ljava/io/OutputStream;
    :catch_80
    move-exception v2

    .line 105
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_81
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_77

    .line 108
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :catch_85
    move-exception v2

    .line 109
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 99
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #mdefaultFile:Ljava/io/File;
    .restart local v5       #myResources:Landroid/content/res/Resources;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catch_8a
    move-exception v2

    .line 100
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_8b
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_80

    goto :goto_74
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 229
    const-string v0, "VideoCallSettings"

    const-string v1, "onNew Intent Recevied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->setIntent(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 251
    const-string v0, "VideoCallSettings"

    const-string v1, "on pause got called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 254
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mPreset:Landroid/preference/PreferenceScreen;

    if-ne v0, p2, :cond_1e

    .line 125
    const-string v0, "VideoCallSettings"

    const-string v1, "Preset Image Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v1, "senderIsVideoCall"

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->startActivity(Landroid/content/Intent;)V

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 175
    const-string v0, "VideoCallSettings"

    const-string v3, "OnResume get Called "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mtp_running_status"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_59

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mPreset:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 184
    :goto_1d
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mFailoption:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "usecall_fail_option"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5f

    move v0, v1

    :goto_2c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mShowme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "own_video_receivedcall"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_61

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.phone.COMPLETE_AUDIO_RESET_AFTER_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->processDuringCallIntent(Landroid/content/Intent;)V

    .line 196
    return-void

    .line 181
    :cond_59
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mPreset:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1d

    :cond_5f
    move v0, v2

    .line 184
    goto :goto_2c

    :cond_61
    move v1, v2

    .line 188
    goto :goto_3d
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== onSharedPreferenceChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    const-string v4, "showme_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 277
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v1, v2

    .line 278
    .local v1, show_me:I
    :goto_29
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "own_video_receivedcall"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    .end local v1           #show_me:I
    :cond_32
    const-string v4, "failoption_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 284
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4d

    move v0, v2

    .line 285
    .local v0, fail_option:I
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usecall_fail_option"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    .end local v0           #fail_option:I
    :cond_4a
    return-void

    :cond_4b
    move v1, v3

    .line 277
    goto :goto_29

    :cond_4d
    move v0, v3

    .line 284
    goto :goto_41
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 259
    return-void
.end method

.method processDuringCallIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "myIntent"

    .prologue
    .line 199
    const-string v2, "VideoCallSettings"

    const-string v3, "Processing During video Call intent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 201
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "senderIsVideoCall"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z

    .line 202
    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z

    if-eqz v2, :cond_4a

    .line 203
    const-string v2, "VideoCallSettings"

    const-string v3, "Sender is Video Call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_1f
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_39

    .line 209
    const-string v2, "VideoCallSettings"

    const-string v3, "Call Forwarding and Call Baring is desabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall;->mVBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :goto_38
    return-void

    .line 215
    :cond_39
    const-string v2, "VideoCallSettings"

    const-string v3, "Call Forwarding and Call Baring is not disabled, becoz it is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_41

    goto :goto_38

    .line 219
    :catch_41
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoCallSettings"

    const-string v3, "Error While Removing the preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 223
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4a
    const-string v2, "VideoCallSettings"

    const-string v3, "Sender is not Video Call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
