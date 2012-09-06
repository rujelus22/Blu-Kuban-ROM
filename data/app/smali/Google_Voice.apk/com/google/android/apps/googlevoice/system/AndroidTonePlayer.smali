.class public Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;
.super Ljava/lang/Object;
.source "AndroidTonePlayer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/TonePlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer$1;
    }
.end annotation


# instance fields
.field private currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private toneGenerator:Landroid/media/ToneGenerator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->lock:Ljava/lang/Object;

    return-void
.end method

.method private getToneGeneratorToneType(Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;)I
    .registers 5
    .parameter "tone"

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer$1;->$SwitchMap$com$google$android$apps$googlevoice$system$TonePlayer$Tone:[I

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_24
    const/16 v0, 0x23

    .line 101
    :goto_26
    return v0

    :pswitch_27
    const/16 v0, 0x1b

    goto :goto_26

    .line 96
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public startTone(Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;)V
    .registers 6
    .parameter "tone"

    .prologue
    .line 39
    if-nez p1, :cond_a

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "tone == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 45
    .local v0, generator:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1f

    .line 46
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 52
    :goto_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->getToneGeneratorToneType(Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    .line 54
    monitor-exit v2

    .line 55
    return-void

    .line 48
    :cond_1f
    new-instance v0, Landroid/media/ToneGenerator;

    .end local v0           #generator:Landroid/media/ToneGenerator;
    const/4 v1, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 49
    .restart local v0       #generator:Landroid/media/ToneGenerator;
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_14

    .line 54
    .end local v0           #generator:Landroid/media/ToneGenerator;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public stopAllTones()V
    .registers 5

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    .line 76
    .local v0, generator:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_13

    .line 78
    :try_start_7
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_20

    .line 81
    :try_start_a
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 83
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    .line 88
    :cond_13
    monitor-exit v2

    .line 89
    return-void

    .line 83
    :catchall_15
    move-exception v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    throw v1

    .line 88
    .end local v0           #generator:Landroid/media/ToneGenerator;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1

    .line 80
    .restart local v0       #generator:Landroid/media/ToneGenerator;
    :catchall_20
    move-exception v1

    .line 81
    :try_start_21
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b

    .line 83
    const/4 v3, 0x0

    :try_start_25
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    throw v1

    .line 83
    :catchall_2b
    move-exception v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    throw v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_1d
.end method

.method public stopTone(Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;)V
    .registers 4
    .parameter "tone"

    .prologue
    .line 59
    if-nez p1, :cond_a

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tone == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    if-ne p1, v0, :cond_17

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->currentlyPlayingTone:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidTonePlayer;->stopAllTones()V

    .line 69
    :cond_17
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v0
.end method
