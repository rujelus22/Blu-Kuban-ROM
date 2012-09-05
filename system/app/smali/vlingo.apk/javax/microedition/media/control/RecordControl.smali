.class public Ljavax/microedition/media/control/RecordControl;
.super Ljava/lang/Object;
.source "RecordControl.java"

# interfaces
.implements Ljavax/microedition/media/control/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/media/control/RecordControl$1;,
        Ljavax/microedition/media/control/RecordControl$RecordThread;,
        Ljavax/microedition/media/control/RecordControl$STATE;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_RECO_DURATION:I = 0xd6d8

.field public static final DEFAULT_MIN_VOICE_DURATION:F = 0.08f

.field public static final DEFAULT_MIN_VOICE_DURATION_CAR:F = 0.08f

.field public static final DEFAULT_MIN_VOICE_LEVEL:F = 0.0f

.field public static final DEFAULT_MIN_VOICE_LEVEL_CAR:F = 0.0f

.field public static final DEFAULT_SILENCE_THRESHOLD:F = 15.0f

.field public static final DEFAULT_SILENCE_THRESHOLD_CAR:F = 9.0f

.field public static final DEFAULT_VOICE_PORTION:F = 0.02f

.field public static final DEFAULT_VOICE_PORTION_CAR:F = 0.025f

.field private static final END_RECORD_THRESHOLD:I = 0x32

.field private static final MAX_CODEC_OUTPUT_CHUNK:I = 0x3e8

.field static final MAX_FAKE_AMR_SIZE:I = 0x1adb0

.field static final MAX_FAKE_WAVEFORM_SIZE:I = 0x1b8000

.field private static final MIN_RECO_DURATION:I = 0x64

.field private static final RECORDER_BUFFER_SIZE:I = 0x9c40

.field private static final RECORDING_WAIT_TIME:I = 0xfa0

.field public static volatile SAMPLE_RATE:I = 0x0

.field private static final SPEEX_COMPLEXITY:I = 0x0

.field private static final SPEEX_NB:I = 0x0

.field private static final SPEEX_QUALITY:I = 0x7

.field private static final SPEEX_VBR:I = 0x1

.field private static final SPEEX_WB:I = 0x1

.field private static final USE_SILENCE_DETECTION:I = 0x1

.field static fakeAMR:[B

.field static fakeAMRFile:Ljava/lang/String;

.field static fakeAMRIndex:I

.field static fakeAMRLen:I

.field static fakeAMRmilliseconds:I

.field static fakeWaveform:[S

.field static fakeWaveformIndex:I

.field static fakeWaveformLen:I

.field static lastFakeWaveform:Ljava/lang/String;

.field private static logWaveform:Z

.field private static logWaveformDOS:Ljava/io/DataOutputStream;

.field private static logWaveformData:Ljava/io/ByteArrayOutputStream;

.field private static logWaveformStartDate:Ljava/util/Date;

.field private static m_minVoiceDuration:F

.field private static m_minVoiceLevel:F

.field private static m_silenceThreshold:F

.field private static m_voicePortion:F

.field static useFakeAMR:Z

.field static useFakeWaveform:Z


# instance fields
.field private m_MaxAudioTime:I

.field private m_UpdateControl:I

.field private m_codecOutputBuffer:[B

.field private m_currentSamplesInCodecBuffer:I

.field private m_endRecordTime:J

.field private m_listener:Ljavax/microedition/media/PlayerListener;

.field private m_maxRecordSize:I

.field private m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

.field private m_rawAudioCodecBuffer:[S

.field private m_record:Landroid/media/AudioRecord;

.field private m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

.field private m_speexChunkSize:I

.field private m_startRecordTime:J

.field private volatile m_state:Ljavax/microedition/media/control/RecordControl$STATE;

.field private m_totalSamplesRecorded:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    const/16 v0, 0x3e80

    sput v0, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    .line 99
    sput-boolean v1, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    .line 102
    sput-object v2, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    .line 103
    sput v1, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    .line 104
    sput v1, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    .line 106
    sput-boolean v1, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    .line 109
    sput-object v2, Ljavax/microedition/media/control/RecordControl;->fakeAMR:[B

    .line 110
    sput v1, Ljavax/microedition/media/control/RecordControl;->fakeAMRLen:I

    .line 111
    sput v1, Ljavax/microedition/media/control/RecordControl;->fakeAMRIndex:I

    .line 112
    const/4 v0, -0x1

    sput v0, Ljavax/microedition/media/control/RecordControl;->fakeAMRmilliseconds:I

    .line 115
    sput-boolean v1, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    .line 116
    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 117
    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 120
    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/media/PlayerListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget v0, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I

    .line 82
    iput-object v2, p0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    .line 83
    iput-object v2, p0, Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 84
    iput-object v2, p0, Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S

    .line 85
    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    .line 86
    iput-object v2, p0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    .line 87
    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I

    .line 88
    sget-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    iput-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    .line 89
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B

    .line 91
    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I

    .line 93
    iput-wide v3, p0, Ljavax/microedition/media/control/RecordControl;->m_startRecordTime:J

    .line 94
    iput-wide v3, p0, Ljavax/microedition/media/control/RecordControl;->m_endRecordTime:J

    .line 95
    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    .line 96
    const v0, 0xea60

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_MaxAudioTime:I

    .line 132
    iput-object p1, p0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    .line 133
    new-instance v0, Lcom/vlingo/client/android/core/audio/SpeexJNI;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/audio/SpeexJNI;-><init>()V

    iput-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    .line 134
    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    .line 135
    return-void
.end method

.method public static IsLogWaveformData()Z
    .registers 1

    .prologue
    .line 755
    sget-boolean v0, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    return v0
.end method

.method public static OnFinishedRecognition(Ljava/lang/String;)V
    .registers 9
    .parameter "guttID"

    .prologue
    const/4 v7, 0x0

    .line 762
    sget-boolean v5, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    if-eqz v5, :cond_62

    .line 764
    :try_start_5
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 765
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_63

    .line 773
    :goto_f
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_62

    .line 774
    const/4 v2, 0x0

    .line 776
    .local v2, fos:Ljava/io/FileOutputStream;
    if-nez p0, :cond_1c

    .line 777
    :try_start_1a
    const-string p0, "null-ID"

    .line 779
    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 780
    .local v4, root:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 781
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vlingo_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".raw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 782
    .local v0, audfile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catchall {:try_start_1a .. :try_end_49} :catchall_83
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_49} :catch_6d

    .line 783
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_49
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 784
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_96
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_55} :catch_99

    move-object v2, v3

    .line 789
    .end local v0           #audfile:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_56
    if-eqz v2, :cond_5b

    .line 791
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_68

    .line 796
    :cond_5b
    :goto_5b
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 797
    sput-object v7, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    .line 801
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #root:Ljava/io/File;
    :cond_62
    :goto_62
    return-void

    .line 766
    :catch_63
    move-exception v1

    .line 767
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 792
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #root:Ljava/io/File;
    :catch_68
    move-exception v1

    .line 793
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 786
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #root:Ljava/io/File;
    :catch_6d
    move-exception v1

    .line 787
    .restart local v1       #e:Ljava/io/IOException;
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_83

    .line 789
    if-eqz v2, :cond_76

    .line 791
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7e

    .line 796
    :cond_76
    :goto_76
    sget-object v5, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 797
    sput-object v7, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    goto :goto_62

    .line 792
    :catch_7e
    move-exception v1

    .line 793
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 789
    .end local v1           #e:Ljava/io/IOException;
    :catchall_83
    move-exception v5

    :goto_84
    if-eqz v2, :cond_89

    .line 791
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_91

    .line 796
    :cond_89
    :goto_89
    sget-object v6, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 797
    sput-object v7, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    throw v5

    .line 792
    :catch_91
    move-exception v1

    .line 793
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    .line 789
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #audfile:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #root:Ljava/io/File;
    :catchall_96
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_84

    .line 786
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_99
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public static SetLogWaveformData(Z)V
    .registers 3
    .parameter "log"

    .prologue
    const/4 v1, 0x0

    .line 746
    sget-boolean v0, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    if-eq p0, v0, :cond_d

    .line 747
    sput-boolean p0, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    .line 748
    sput-object v1, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 749
    sput-object v1, Ljavax/microedition/media/control/RecordControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 750
    sput-object v1, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    .line 752
    :cond_d
    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/control/RecordControl$STATE;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    return-object v0
.end method

.method static synthetic access$002(Ljavax/microedition/media/control/RecordControl;Ljavax/microedition/media/control/RecordControl$STATE;)Ljavax/microedition/media/control/RecordControl$STATE;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    return-object p1
.end method

.method static synthetic access$100(Ljavax/microedition/media/control/RecordControl;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Ljavax/microedition/media/control/RecordControl;->m_startRecordTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Ljavax/microedition/media/control/RecordControl;)[S
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    return v0
.end method

.method static synthetic access$1200()Ljava/io/DataOutputStream;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Ljavax/microedition/media/control/RecordControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$1300(Ljavax/microedition/media/control/RecordControl;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_codecOutputBuffer:[B

    return-object v0
.end method

.method static synthetic access$1400(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/android/core/audio/SpeexJNI;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    return-object v0
.end method

.method static synthetic access$1500(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    return v0
.end method

.method static synthetic access$1502(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    return p1
.end method

.method static synthetic access$1512(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    return v0
.end method

.method static synthetic access$1600(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I

    return v0
.end method

.method static synthetic access$1602(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I

    return p1
.end method

.method static synthetic access$1700(Ljavax/microedition/media/control/RecordControl;[BI)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljavax/microedition/media/control/RecordControl;->convertBytesToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_MaxAudioTime:I

    return v0
.end method

.method static synthetic access$300(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I

    return v0
.end method

.method static synthetic access$312(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I

    return v0
.end method

.method static synthetic access$400(Ljavax/microedition/media/control/RecordControl;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Ljavax/microedition/media/control/RecordControl;->m_endRecordTime:J

    return-wide v0
.end method

.method static synthetic access$500(Ljavax/microedition/media/control/RecordControl;)Ljavax/microedition/media/PlayerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    return-object v0
.end method

.method static synthetic access$600(Ljavax/microedition/media/control/RecordControl;)Landroid/media/AudioRecord;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$602(Ljavax/microedition/media/control/RecordControl;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$700(Ljavax/microedition/media/control/RecordControl;)Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$800(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I

    return v0
.end method

.method static synthetic access$900(Ljavax/microedition/media/control/RecordControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    return v0
.end method

.method static synthetic access$902(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    return p1
.end method

.method static synthetic access$908(Ljavax/microedition/media/control/RecordControl;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    return v0
.end method

.method static synthetic access$912(Ljavax/microedition/media/control/RecordControl;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iget v0, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    return v0
.end method

.method private convertBytesToInt([BI)I
    .registers 7
    .parameter "input"
    .parameter "startIndex"

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, shift:I
    const/4 v2, 0x0

    .line 154
    .local v2, value:I
    move v0, p2

    .local v0, i:I
    :goto_3
    add-int/lit8 v3, p2, 0x4

    if-ge v0, v3, :cond_12

    .line 155
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 156
    add-int/lit8 v1, v1, 0x8

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 159
    :cond_12
    return v2
.end method

.method private getSilenceDetectionSettings(Z)V
    .registers 6
    .parameter "isInCarMode"

    .prologue
    const v3, 0x3da3d70a

    const/4 v2, 0x0

    .line 138
    if-eqz p1, :cond_2c

    .line 139
    const-string v0, "silenct_detect_threshold_car"

    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_silenceThreshold:F

    .line 140
    const-string v0, "silence_detect_min_voice_duration_car"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_minVoiceDuration:F

    .line 141
    const-string v0, "silence_detect_voice_portion_car"

    const v1, 0x3ccccccd

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_voicePortion:F

    .line 142
    const-string v0, "silence_detect_min_voice_level_car"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_minVoiceLevel:F

    .line 149
    :goto_2b
    return-void

    .line 144
    :cond_2c
    const-string v0, "silenct_detect_threshold"

    const/high16 v1, 0x4170

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_silenceThreshold:F

    .line 145
    const-string v0, "silence_detect_min_voice_duration"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_minVoiceDuration:F

    .line 146
    const-string v0, "silence_detect_voice_portion"

    const v1, 0x3ca3d70a

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_voicePortion:F

    .line 147
    const-string v0, "silence_detect_min_voice_level"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Ljavax/microedition/media/control/RecordControl;->m_minVoiceLevel:F

    goto :goto_2b
.end method

.method private declared-synchronized getState()Ljavax/microedition/media/control/RecordControl$STATE;
    .registers 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static initAudioLogging()V
    .registers 3

    .prologue
    .line 804
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audiofilelog_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljavax/microedition/media/control/RecordControl;->SetLogWaveformData(Z)V

    .line 805
    return-void
.end method

.method public static isFakeWaveformDone()Z
    .registers 2

    .prologue
    .line 742
    sget v0, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    sget v1, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setFakeAMRFile(Ljava/lang/String;I)V
    .registers 4
    .parameter "filename"
    .parameter "durationMS"

    .prologue
    const/16 v1, 0x64

    .line 683
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/microedition/media/control/RecordControl;->useFakeAMR:Z

    .line 685
    if-gez p1, :cond_12

    .line 686
    const v0, 0xd6d8

    sput v0, Ljavax/microedition/media/control/RecordControl;->fakeAMRmilliseconds:I

    .line 690
    :cond_c
    :goto_c
    const/4 v0, 0x0

    sput v0, Ljavax/microedition/media/control/RecordControl;->fakeAMRIndex:I

    .line 691
    sput-object p0, Ljavax/microedition/media/control/RecordControl;->fakeAMRFile:Ljava/lang/String;

    .line 692
    return-void

    .line 687
    :cond_12
    if-ge p1, v1, :cond_c

    .line 688
    sput v1, Ljavax/microedition/media/control/RecordControl;->fakeAMRmilliseconds:I

    goto :goto_c
.end method

.method public static setFakeUtterance(Ljava/lang/String;)V
    .registers 10
    .parameter "filename"

    .prologue
    const v8, 0x1b8000

    const/4 v7, 0x0

    .line 699
    if-nez p0, :cond_c

    .line 700
    const v4, 0x7fffffff

    sput v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    .line 739
    :cond_b
    :goto_b
    return-void

    .line 703
    :cond_c
    const/4 v4, 0x1

    sput-boolean v4, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    .line 704
    sput v7, Ljavax/microedition/media/control/RecordControl;->fakeWaveformIndex:I

    .line 705
    sget-object v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    if-eqz v4, :cond_1d

    .line 706
    sget-object v4, Ljavax/microedition/media/control/RecordControl;->lastFakeWaveform:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 712
    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 713
    .local v3, input:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 714
    .local v0, dis:Ljava/io/DataInputStream;
    sget-object v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    if-nez v4, :cond_32

    .line 715
    const v4, 0x1b8000

    new-array v4, v4, [S

    sput-object v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    .line 717
    :cond_32
    const/4 v4, 0x0

    sput v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    .line 718
    :goto_35
    sget v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_4f

    if-ge v4, v8, :cond_49

    .line 720
    :try_start_39
    sget-object v4, Ljavax/microedition/media/control/RecordControl;->fakeWaveform:[S

    sget v5, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Ljavax/microedition/media/control/RecordControl;->fakeWaveformLen:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v4, v5
    :try_end_47
    .catch Ljava/io/EOFException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_4f

    goto :goto_35

    .line 725
    :catch_48
    move-exception v2

    .line 729
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 730
    sput-object p0, Ljavax/microedition/media/control/RecordControl;->lastFakeWaveform:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_b

    .line 734
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v3           #input:Ljava/io/FileInputStream;
    :catch_4f
    move-exception v1

    .line 737
    .local v1, e:Ljava/lang/Exception;
    sput-boolean v7, Ljavax/microedition/media/control/RecordControl;->useFakeWaveform:Z

    goto :goto_b
.end method

.method private waitForRecordToStop()V
    .registers 8

    .prologue
    .line 207
    invoke-direct {p0}, Ljavax/microedition/media/control/RecordControl;->getState()Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v3

    sget-object v4, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    if-eq v3, v4, :cond_33

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 211
    .local v1, start:J
    invoke-virtual {p0}, Ljavax/microedition/media/control/RecordControl;->stopRecord()V

    .line 212
    :goto_f
    invoke-direct {p0}, Ljavax/microedition/media/control/RecordControl;->getState()Ljavax/microedition/media/control/RecordControl$STATE;

    move-result-object v3

    sget-object v4, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    if-eq v3, v4, :cond_33

    const-wide/16 v3, 0xfa0

    add-long/2addr v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_33

    .line 213
    const-wide/16 v3, 0x64

    :try_start_24
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_f

    :catch_28
    move-exception v0

    .line 214
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 218
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #start:J
    :cond_33
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanUp()V
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    sget-object v0, Ljavax/microedition/media/control/RecordControl$1;->$SwitchMap$javax$microedition$media$control$RecordControl$STATE:[I

    iget-object v1, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    invoke-virtual {v1}, Ljavax/microedition/media/control/RecordControl$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    packed-switch v0, :pswitch_data_1c

    .line 192
    :goto_e
    :pswitch_e
    monitor-exit p0

    return-void

    .line 184
    :pswitch_10
    :try_start_10
    invoke-virtual {p0}, Ljavax/microedition/media/control/RecordControl;->stopRecord()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_e

    .line 180
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :pswitch_17
    :try_start_17
    invoke-direct {p0}, Ljavax/microedition/media/control/RecordControl;->waitForRecordToStop()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    goto :goto_e

    .line 180
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method

.method public commit()V
    .registers 1

    .prologue
    .line 174
    invoke-virtual {p0}, Ljavax/microedition/media/control/RecordControl;->stopRecord()V

    .line 175
    return-void
.end method

.method public setRecordSizeLimit(I)V
    .registers 2
    .parameter "maxRecordSize"

    .prologue
    .line 668
    iput p1, p0, Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I

    .line 669
    return-void
.end method

.method public setRecordStream(Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;)V
    .registers 3
    .parameter "stream"

    .prologue
    .line 663
    iput-object p1, p0, Ljavax/microedition/media/control/RecordControl;->m_outputStream:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/media/control/RecordControl;->m_UpdateControl:I

    .line 665
    return-void
.end method

.method public setRecordTimeLimit(I)V
    .registers 2
    .parameter "maxAudioTime"

    .prologue
    .line 672
    iput p1, p0, Ljavax/microedition/media/control/RecordControl;->m_MaxAudioTime:I

    .line 673
    return-void
.end method

.method public startRecord(ZI)Z
    .registers 20
    .parameter "isInCarMode"
    .parameter "requestNumber"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Ljavax/microedition/media/control/RecordControl;->waitForRecordToStop()V

    .line 231
    monitor-enter p0

    .line 232
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    sget-object v4, Ljavax/microedition/media/control/RecordControl$STATE;->IDLE:Ljavax/microedition/media/control/RecordControl$STATE;

    if-eq v2, v4, :cond_1f

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    check-cast v2, Ljavax/microedition/media/Player;

    const-string v6, "RecordError"

    const/4 v7, 0x0

    invoke-interface {v4, v2, v6, v7}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    const/4 v2, 0x0

    monitor-exit p0

    .line 379
    :goto_1e
    return v2

    .line 238
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_fa

    .line 242
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v15

    .line 244
    .local v15, isBluetooth:Z
    if-eqz v15, :cond_fd

    .line 247
    sget v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    const/16 v4, 0x3e80

    if-ne v2, v4, :cond_39

    .line 250
    const/16 v2, 0x1f40

    sput v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    .line 251
    new-instance v2, Lcom/vlingo/client/android/core/audio/SpeexJNI;

    invoke-direct {v2}, Lcom/vlingo/client/android/core/audio/SpeexJNI;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    .line 253
    :cond_39
    const/4 v3, 0x0

    .line 267
    .local v3, speex_mode:I
    :goto_3a
    sget v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    mul-int/lit8 v2, v2, 0x1e

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Ljavax/microedition/media/control/RecordControl;->m_maxRecordSize:I

    .line 271
    invoke-direct/range {p0 .. p1}, Ljavax/microedition/media/control/RecordControl;->getSilenceDetectionSettings(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget v8, Ljavax/microedition/media/control/RecordControl;->m_silenceThreshold:F

    sget v9, Ljavax/microedition/media/control/RecordControl;->m_minVoiceDuration:F

    sget v10, Ljavax/microedition/media/control/RecordControl;->m_voicePortion:F

    sget v11, Ljavax/microedition/media/control/RecordControl;->m_minVoiceLevel:F

    invoke-virtual/range {v2 .. v11}, Lcom/vlingo/client/android/core/audio/SpeexJNI;->initialize(IIIIIFFFF)I

    move-result v16

    .line 278
    .local v16, newChunkSize:I
    move-object/from16 v0, p0

    iget v2, v0, Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_73

    .line 279
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I

    .line 280
    move-object/from16 v0, p0

    iget v2, v0, Ljavax/microedition/media/control/RecordControl;->m_speexChunkSize:I

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_rawAudioCodecBuffer:[S

    .line 283
    :cond_73
    const/4 v12, 0x2

    .line 290
    .local v12, channelConfig:I
    const/4 v5, 0x1

    .line 292
    .local v5, source:I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_7d

    if-nez v15, :cond_7d

    .line 295
    const/4 v5, 0x6

    .line 300
    :cond_7d
    :try_start_7d
    monitor-enter p0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7e} :catch_e6

    .line 302
    const/4 v2, 0x0

    :try_start_7f
    move-object/from16 v0, p0

    iput v2, v0, Ljavax/microedition/media/control/RecordControl;->m_currentSamplesInCodecBuffer:I

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljavax/microedition/media/control/RecordControl;->m_totalSamplesRecorded:I

    .line 308
    sget-boolean v2, Ljavax/microedition/media/control/RecordControl;->logWaveform:Z

    if-eqz v2, :cond_a3

    .line 309
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformStartDate:Ljava/util/Date;

    .line 310
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    .line 311
    new-instance v2, Ljava/io/DataOutputStream;

    sget-object v4, Ljavax/microedition/media/control/RecordControl;->logWaveformData:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Ljavax/microedition/media/control/RecordControl;->logWaveformDOS:Ljava/io/DataOutputStream;

    .line 322
    :cond_a3
    sget v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    const/4 v4, 0x2

    const/4 v6, 0x2

    invoke-static {v2, v4, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 328
    .local v9, bufsize:I
    const v2, 0x9c40

    if-ge v9, v2, :cond_be

    .line 329
    const v2, 0x9c40

    div-int v4, v2, v9

    const v2, 0x9c40

    rem-int/2addr v2, v9

    if-lez v2, :cond_113

    const/4 v2, 0x1

    :goto_bc
    add-int/2addr v2, v4

    mul-int/2addr v9, v2

    .line 334
    :cond_be
    new-instance v4, Landroid/media/AudioRecord;

    sget v6, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_115

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    .line 341
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "AudioRecord constructed but in uninitialized state"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    .end local v9           #bufsize:I
    :catchall_e3
    move-exception v2

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_7f .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v2
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e6} :catch_e6

    .line 375
    :catch_e6
    move-exception v14

    .line 376
    .local v14, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    check-cast v2, Ljavax/microedition/media/Player;

    const-string v6, "RecordError"

    const/4 v7, 0x0

    invoke-interface {v4, v2, v6, v7}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    const/4 v2, 0x0

    goto/16 :goto_1e

    .line 238
    .end local v3           #speex_mode:I
    .end local v5           #source:I
    .end local v12           #channelConfig:I
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #isBluetooth:Z
    .end local v16           #newChunkSize:I
    :catchall_fa
    move-exception v2

    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v2

    .line 258
    .restart local v15       #isBluetooth:Z
    :cond_fd
    sget v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    const/16 v4, 0x1f40

    if-ne v2, v4, :cond_110

    .line 261
    const/16 v2, 0x3e80

    sput v2, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    .line 262
    new-instance v2, Lcom/vlingo/client/android/core/audio/SpeexJNI;

    invoke-direct {v2}, Lcom/vlingo/client/android/core/audio/SpeexJNI;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_speex:Lcom/vlingo/client/android/core/audio/SpeexJNI;

    .line 264
    :cond_110
    const/4 v3, 0x1

    .restart local v3       #speex_mode:I
    goto/16 :goto_3a

    .line 329
    .restart local v5       #source:I
    .restart local v9       #bufsize:I
    .restart local v12       #channelConfig:I
    .restart local v16       #newChunkSize:I
    :cond_113
    const/4 v2, 0x0

    goto :goto_bc

    .line 347
    :cond_115
    :try_start_115
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 349
    sget-object v2, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Ljavax/microedition/media/control/RecordControl;->m_startRecordTime:J

    .line 352
    monitor-exit p0
    :try_end_12b
    .catchall {:try_start_115 .. :try_end_12b} :catchall_e3

    .line 354
    :try_start_12b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/microedition/media/control/RecordControl;->m_listener:Ljavax/microedition/media/PlayerListener;

    check-cast v2, Ljavax/microedition/media/Player;

    const-string v6, "RecordStart"

    const/4 v7, 0x0

    invoke-interface {v4, v2, v6, v7}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    new-instance v13, Ljava/lang/Thread;

    new-instance v2, Ljavax/microedition/media/control/RecordControl$RecordThread;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v2, v0, v1}, Ljavax/microedition/media/control/RecordControl$RecordThread;-><init>(Ljavax/microedition/media/control/RecordControl;I)V

    invoke-direct {v13, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    .local v13, dataThread:Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_14c} :catch_e6

    .line 379
    const/4 v2, 0x1

    goto/16 :goto_1e
.end method

.method public declared-synchronized stopRecord()V
    .registers 3

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;

    sget-object v1, Ljavax/microedition/media/control/RecordControl$STATE;->RECORDING:Ljavax/microedition/media/control/RecordControl$STATE;

    if-ne v0, v1, :cond_11

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/microedition/media/control/RecordControl;->m_endRecordTime:J

    .line 656
    sget-object v0, Ljavax/microedition/media/control/RecordControl$STATE;->STOP_REQUESTED:Ljavax/microedition/media/control/RecordControl$STATE;

    iput-object v0, p0, Ljavax/microedition/media/control/RecordControl;->m_state:Ljavax/microedition/media/control/RecordControl$STATE;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 658
    :cond_11
    monitor-exit p0

    return-void

    .line 654
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
