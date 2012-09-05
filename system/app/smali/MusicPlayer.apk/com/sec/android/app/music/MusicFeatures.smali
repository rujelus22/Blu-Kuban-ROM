.class public Lcom/sec/android/app/music/MusicFeatures;
.super Ljava/lang/Object;
.source "MusicFeatures.java"


# static fields
.field public static final FLAG_CHECK_IMEI_WHEN_HANDLE_ACTION_MEDIA_BUTTON:Z

.field public static final FLAG_ENABLE_FIND_TAG:Z

.field public static final FLAG_SUPPORT_DELAYED_PLAY_AFTER_VOICE_RECORDING:Z

.field public static FLAG_SUPPORT_SPLIT_LIST_VIEW:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-string v0, "MUSIC_KOR"

    const-string v1, "MUSIC_EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_ENABLE_FIND_TAG:Z

    .line 80
    const-string v0, "MUSIC_KOR"

    const-string v1, "MUSIC_EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_DELAYED_PLAY_AFTER_VOICE_RECORDING:Z

    .line 88
    const-string v0, "MUSIC_KOR"

    const-string v1, "MUSIC_EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_CHECK_IMEI_WHEN_HANDLE_ACTION_MEDIA_BUTTON:Z

    .line 118
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    return-void

    .line 14
    :cond_25
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
