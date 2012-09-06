.class public final Lcom/google/android/youtube/core/player/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

.field private final d:Lcom/google/android/youtube/core/player/ar;

.field private final e:Lcom/google/android/youtube/core/b/al;

.field private final f:Lcom/google/android/youtube/core/async/c;

.field private g:Z

.field private h:Lcom/google/android/youtube/core/model/Subtitle;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/ar;Lcom/google/android/youtube/core/b/al;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->a:Landroid/app/Activity;

    .line 62
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    .line 63
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/al;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->e:Lcom/google/android/youtube/core/b/al;

    .line 64
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    .line 65
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    .line 66
    invoke-static {p1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->f:Lcom/google/android/youtube/core/async/c;

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ap;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->c()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/ap;)Lcom/google/android/youtube/core/async/c;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->f:Lcom/google/android/youtube/core/async/c;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ap;->g:Z

    if-eqz v0, :cond_18

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v0, :cond_10

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ar;->d()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    .line 76
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/ap;->g:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ar;->b()V

    .line 79
    :cond_18
    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/ap;)Lcom/google/android/youtube/core/b/al;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->e:Lcom/google/android/youtube/core/b/al;

    return-object v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ap;->g:Z

    if-nez v0, :cond_c

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/ap;->g:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ar;->a()V

    .line 86
    :cond_c
    return-void
.end method

.method private d()I
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 237
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 240
    if-le v2, v1, :cond_31

    .line 243
    sparse-switch v2, :sswitch_data_34

    .line 250
    :goto_17
    :sswitch_17
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 253
    :goto_2a
    return v0

    .line 244
    :sswitch_2b
    const/4 v0, 0x1

    goto :goto_17

    .line 246
    :sswitch_2d
    const/4 v0, 0x3

    goto :goto_17

    :sswitch_2f
    move v0, v1

    .line 247
    goto :goto_17

    :cond_31
    move v0, v2

    goto :goto_2a

    .line 243
    nop

    :sswitch_data_34
    .sparse-switch
        0xc -> :sswitch_2b
        0x12 -> :sswitch_17
        0x19 -> :sswitch_2d
        0x23 -> :sswitch_2f
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/SubtitleTrack;)V
    .registers 5
    .parameter

    .prologue
    .line 257
    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitles_language_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ar;->d()V

    .line 268
    :goto_1f
    return-void

    .line 263
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requesting subtitle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->e:Lcom/google/android/youtube/core/b/al;

    new-instance v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ap;->i:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ap;->f:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/al;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/l;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitles_language_code"

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1f
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 10
    .parameter

    .prologue
    .line 104
    const-string v0, "video cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    iget-boolean v4, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    iget-boolean v5, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->getDefaultSubtitleLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoId cannot be empty"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/player/ap;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->b:Landroid/content/SharedPreferences;

    const-string v6, "subtitles_language_code"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_73

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    :goto_2a
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->b()V

    if-eqz v3, :cond_5f

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initializing to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->e:Lcom/google/android/youtube/core/b/al;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ap;->a:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/core/player/aq;

    invoke-direct {v4, p0, v5, v0}, Lcom/google/android/youtube/core/player/aq;-><init>(Lcom/google/android/youtube/core/player/ap;ZLjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/b/al;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 107
    :cond_5f
    :goto_5f
    return-void

    .line 105
    :cond_60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_6f
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->c()V

    goto :goto_5f

    :cond_73
    move-object v0, v1

    goto :goto_2a
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const-string v0, "error retrieving subtitle"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->b()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p2, Lcom/google/android/youtube/core/model/Subtitle;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->d:Lcom/google/android/youtube/core/player/ar;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ar;->c()V

    return-void
.end method

.method public final a(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 205
    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 189
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v1, :cond_1c

    .line 190
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->h:Lcom/google/android/youtube/core/model/Subtitle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/model/Subtitle;->getTextAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_1c

    .line 192
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 196
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->a()V

    goto :goto_7

    .line 202
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->a()V

    goto :goto_7

    .line 187
    :pswitch_data_28
    .packed-switch 0x4
        :pswitch_22
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 231
    const-string v0, "subtitles_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ap;->c:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ap;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    .line 234
    :cond_11
    return-void
.end method
