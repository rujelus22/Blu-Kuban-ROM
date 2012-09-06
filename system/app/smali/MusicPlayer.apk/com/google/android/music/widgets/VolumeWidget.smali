.class public Lcom/google/android/music/widgets/VolumeWidget;
.super Landroid/widget/ImageView;
.source "VolumeWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final IMAGES:[I

.field private static final LOGV:Z


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMute:Z

.field private mListeningForVolumeChanges:Z

.field private final mMaxVolumeIndex:I

.field private final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeLevel:I

.field private final mVolumeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "VolumeWidget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/widgets/VolumeWidget;->LOGV:Z

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/music/widgets/VolumeWidget;->IMAGES:[I

    return-void

    :array_12
    .array-data 0x4
        0xd6t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    .line 33
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    .line 34
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    .line 60
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/VolumeWidget$1;-><init>(Lcom/google/android/music/widgets/VolumeWidget;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$2;

    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/widgets/VolumeWidget$2;-><init>(Lcom/google/android/music/widgets/VolumeWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 87
    invoke-static {p1}, Lcom/google/android/music/widgets/VolumeWidget;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    .line 33
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    .line 34
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    .line 60
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/VolumeWidget$1;-><init>(Lcom/google/android/music/widgets/VolumeWidget;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$2;

    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/widgets/VolumeWidget$2;-><init>(Lcom/google/android/music/widgets/VolumeWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 93
    invoke-static {p1}, Lcom/google/android/music/widgets/VolumeWidget;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    .line 33
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    .line 34
    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    .line 60
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/VolumeWidget$1;-><init>(Lcom/google/android/music/widgets/VolumeWidget;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/google/android/music/widgets/VolumeWidget$2;

    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/widgets/VolumeWidget$2;-><init>(Lcom/google/android/music/widgets/VolumeWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 99
    invoke-static {p1}, Lcom/google/android/music/widgets/VolumeWidget;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/VolumeWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->requestUpdate()V

    return-void
.end method

.method private cancelUpdate()V
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method private static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 2
    .parameter "c"

    .prologue
    .line 242
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private requestUpdate()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private startListeningForVolumeUpdate()V
    .registers 6

    .prologue
    .line 196
    sget-boolean v1, Lcom/google/android/music/widgets/VolumeWidget;->LOGV:Z

    if-eqz v1, :cond_b

    .line 197
    const-string v1, "VolumeWidget"

    const-string v2, "Start listening"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_b
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->requestUpdate()V

    .line 200
    iget-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    if-nez v1, :cond_3f

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/music/widgets/VolumeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/google/android/music/widgets/VolumeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    .line 221
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3f
    return-void
.end method

.method private stopListeningForVolumeUpdate()V
    .registers 3

    .prologue
    .line 224
    sget-boolean v0, Lcom/google/android/music/widgets/VolumeWidget;->LOGV:Z

    if-eqz v0, :cond_b

    .line 225
    const-string v0, "VolumeWidget"

    const-string v1, "Stop listening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    if-eqz v0, :cond_2b

    .line 228
    invoke-virtual {p0}, Lcom/google/android/music/widgets/VolumeWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/music/widgets/VolumeWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->cancelUpdate()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/VolumeWidget;->mListeningForVolumeChanges:Z

    .line 233
    :cond_2b
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 184
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->startListeningForVolumeUpdate()V

    .line 185
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 190
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->stopListeningForVolumeUpdate()V

    .line 191
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 149
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->startListeningForVolumeUpdate()V

    .line 150
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 155
    if-nez p2, :cond_9

    .line 156
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->startListeningForVolumeUpdate()V

    .line 160
    :goto_8
    return-void

    .line 158
    :cond_9
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->stopListeningForVolumeUpdate()V

    goto :goto_8
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 175
    sget-boolean v0, Lcom/google/android/music/widgets/VolumeWidget;->LOGV:Z

    if-eqz v0, :cond_d

    .line 176
    const-string v1, "VolumeWidget"

    if-eqz p1, :cond_11

    const-string v0, "gained focus"

    :goto_a
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_d
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->requestUpdate()V

    .line 179
    return-void

    .line 176
    :cond_11
    const-string v0, "lost focus"

    goto :goto_a
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 166
    if-nez p1, :cond_9

    .line 167
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->startListeningForVolumeUpdate()V

    .line 171
    :goto_8
    return-void

    .line 169
    :cond_9
    invoke-direct {p0}, Lcom/google/android/music/widgets/VolumeWidget;->stopListeningForVolumeUpdate()V

    goto :goto_8
.end method

.method public run()V
    .registers 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/android/music/widgets/VolumeWidget;->updateVolumeIndicator()V

    .line 282
    return-void
.end method

.method public showSystemVolume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 237
    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 238
    .local v0, volume:I
    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 239
    return-void
.end method

.method public updateVolumeIndicator()V
    .registers 2

    .prologue
    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/VolumeWidget;->updateVolumeIndicator(I)V

    .line 105
    return-void
.end method

.method public updateVolumeIndicator(I)V
    .registers 10
    .parameter "currentVolumeLevel"

    .prologue
    .line 109
    sget-object v6, Lcom/google/android/music/widgets/VolumeWidget;->IMAGES:[I

    array-length v1, v6

    .line 110
    .local v1, maxNumberOfImages:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_d

    .line 112
    iget-object v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 114
    :cond_d
    iget v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    if-le p1, v6, :cond_3b

    .line 115
    iget p1, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    .line 119
    :cond_13
    :goto_13
    iget v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mMaxVolumeIndex:I

    int-to-float v0, v6

    .line 120
    .local v0, max:F
    int-to-float v5, p1

    .line 121
    .local v5, value:F
    div-float v6, v5, v0

    int-to-float v7, v1

    mul-float v4, v6, v7

    .line 122
    .local v4, ratio:F
    float-to-int v2, v4

    .line 123
    .local v2, newIndex:I
    if-lt v2, v1, :cond_21

    .line 124
    add-int/lit8 v2, v1, -0x1

    .line 137
    :cond_21
    if-nez p1, :cond_3f

    const/4 v3, 0x1

    .line 139
    .local v3, newIsMute:Z
    :goto_24
    iget v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    if-ne v2, v6, :cond_2c

    iget-boolean v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    if-eq v3, v6, :cond_3a

    .line 140
    :cond_2c
    iput v2, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    .line 141
    iput-boolean v3, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    .line 142
    iget-boolean v6, p0, Lcom/google/android/music/widgets/VolumeWidget;->mIsMute:Z

    if-eqz v6, :cond_41

    const v6, 0x7f0200e2

    :goto_37
    invoke-virtual {p0, v6}, Lcom/google/android/music/widgets/VolumeWidget;->setImageResource(I)V

    .line 144
    :cond_3a
    return-void

    .line 116
    .end local v0           #max:F
    .end local v2           #newIndex:I
    .end local v3           #newIsMute:Z
    .end local v4           #ratio:F
    .end local v5           #value:F
    :cond_3b
    if-gez p1, :cond_13

    .line 117
    const/4 p1, 0x0

    goto :goto_13

    .line 137
    .restart local v0       #max:F
    .restart local v2       #newIndex:I
    .restart local v4       #ratio:F
    .restart local v5       #value:F
    :cond_3f
    const/4 v3, 0x0

    goto :goto_24

    .line 142
    .restart local v3       #newIsMute:Z
    :cond_41
    sget-object v6, Lcom/google/android/music/widgets/VolumeWidget;->IMAGES:[I

    iget v7, p0, Lcom/google/android/music/widgets/VolumeWidget;->mVolumeLevel:I

    aget v6, v6, v7

    goto :goto_37
.end method
