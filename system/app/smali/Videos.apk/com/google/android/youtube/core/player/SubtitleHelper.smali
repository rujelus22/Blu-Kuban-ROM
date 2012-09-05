.class public Lcom/google/android/youtube/core/player/SubtitleHelper;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        "Lcom/google/android/youtube/core/model/Subtitle;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

.field private final listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

.field private final preferences:Landroid/content/SharedPreferences;

.field private showSubtitlesAlways:Z

.field private final subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

.field private final subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

.field private trackSelectionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;Lcom/google/android/youtube/core/client/SubtitlesClient;)V
    .registers 8
    .parameter "activity"
    .parameter "preferences"
    .parameter "player"
    .parameter "subtitleOverlay"
    .parameter "listener"
    .parameter "subtitlesClient"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    .line 66
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/SubtitlesClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 68
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    .line 69
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {p3, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->showSubtitlesAlways:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->enableTrackSelection()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/client/SubtitlesClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/youtube/core/player/SubtitleHelper;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/youtube/core/player/SubtitleHelper;Lcom/google/android/youtube/core/model/Subtitle;)Lcom/google/android/youtube/core/model/Subtitle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private disableTrackSelection()V
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->trackSelectionEnabled:Z

    if-eqz v0, :cond_18

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;->onSubtitleDisabled()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 81
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->trackSelectionEnabled:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;->onTrackSelectionDisabled()V

    .line 84
    :cond_18
    return-void
.end method

.method private enableTrackSelection()V
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->trackSelectionEnabled:Z

    if-nez v0, :cond_c

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->trackSelectionEnabled:Z

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;->onTrackSelectionEnabled()V

    .line 91
    :cond_c
    return-void
.end method

.method private getDefaultLanguageCode(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;
    .registers 7
    .parameter "video"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_language_code"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, defaultLanguage:Ljava/lang/String;
    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    if-eqz v2, :cond_18

    .line 267
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->getDefaultSubtitleLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, videoDefaultSubtitleLanguage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 270
    move-object v0, v1

    .line 277
    .end local v1           #videoDefaultSubtitleLanguage:Ljava/lang/String;
    :cond_18
    :goto_18
    return-object v0

    .line 271
    .restart local v1       #videoDefaultSubtitleLanguage:Ljava/lang/String;
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private getFontSizeLevel()I
    .registers 6

    .prologue
    .line 281
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_size"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, sizeString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, size:I
    const/4 v2, 0x4

    if-le v0, v2, :cond_2b

    .line 287
    sparse-switch v0, :sswitch_data_34

    .line 292
    const/4 v0, 0x2

    .line 294
    :goto_18
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    :cond_2b
    return v0

    .line 288
    :sswitch_2c
    const/4 v0, 0x1

    goto :goto_18

    .line 289
    :sswitch_2e
    const/4 v0, 0x2

    goto :goto_18

    .line 290
    :sswitch_30
    const/4 v0, 0x3

    goto :goto_18

    .line 291
    :sswitch_32
    const/4 v0, 0x4

    goto :goto_18

    .line 287
    :sswitch_data_34
    .sparse-switch
        0xc -> :sswitch_2c
        0x12 -> :sswitch_2e
        0x19 -> :sswitch_30
        0x23 -> :sswitch_32
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 233
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 255
    :pswitch_6
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 236
    :pswitch_8
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->getFontSizeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    goto :goto_7

    .line 239
    :pswitch_12
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v2, :cond_26

    .line 240
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Subtitle;->getTextAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_26

    .line 242
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 246
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_26
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->hide()V

    goto :goto_7

    .line 252
    :pswitch_2c
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->hide()V

    goto :goto_7

    .line 233
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_8
        :pswitch_6
        :pswitch_2c
        :pswitch_12
        :pswitch_6
        :pswitch_6
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public init(Lcom/google/android/youtube/core/model/Video;)V
    .registers 8
    .parameter "video"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->disableTrackSelection()V

    .line 106
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-nez v1, :cond_b

    .line 168
    :goto_a
    return-void

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->getFontSizeLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    .line 113
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->showSubtitlesAlways:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->getDefaultLanguageCode(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, languageCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/core/player/SubtitleHelper$1;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/core/player/SubtitleHelper$1;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/client/SubtitlesClient;->requestSubtitleTracks(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_a

    .line 166
    :cond_4c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->enableTrackSelection()V

    goto :goto_a
.end method

.method public onError(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 99
    const-string v0, "error retrieving subtitle"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->disableTrackSelection()V

    .line 101
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onError(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 94
    iput-object p2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;->onSubtitleEnabled()V

    .line 96
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Subtitle;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onResponse(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;)V

    return-void
.end method

.method protected showDialog()V
    .registers 5

    .prologue
    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleHelper$3;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/SubtitleHelper$3;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 230
    return-void
.end method

.method public showTrackSelector(Ljava/lang/String;)V
    .registers 6
    .parameter "videoId"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->trackSelectionEnabled:Z

    if-nez v0, :cond_5

    .line 205
    :goto_4
    return-void

    .line 175
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    new-instance v1, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleHelper$2;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/SubtitleHelper$2;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/client/SubtitlesClient;->requestSubtitleTracks(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_4
.end method
