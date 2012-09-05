.class public final Lcom/google/android/youtube/core/player/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/youtube/core/player/ai;

.field private final d:Lcom/google/android/youtube/core/player/ah;

.field private final e:Lcom/google/android/youtube/core/client/ah;

.field private final f:Lcom/google/android/youtube/core/async/a;

.field private g:Landroid/widget/ArrayAdapter;

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/youtube/core/model/Subtitle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/ai;Lcom/google/android/youtube/core/player/ah;Lcom/google/android/youtube/core/client/ah;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    .line 65
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->b:Landroid/content/SharedPreferences;

    .line 66
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ah;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->e:Lcom/google/android/youtube/core/client/ah;

    .line 67
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ai;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    .line 68
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ah;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    .line 69
    invoke-static {p1, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->f:Lcom/google/android/youtube/core/async/a;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ad;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ad;->g:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ad;Lcom/google/android/youtube/core/model/Subtitle;)Lcom/google/android/youtube/core/model/Subtitle;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/ad;)Z
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->h:Z

    return v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->i:Z

    if-eqz v0, :cond_18

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ah;->n()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    .line 78
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->i:Z

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ah;->l()V

    .line 81
    :cond_18
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/ad;)V
    .registers 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->c()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/async/a;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->f:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->i:Z

    if-nez v0, :cond_c

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->i:Z

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ah;->k()V

    .line 88
    :cond_c
    return-void
.end method

.method private d()I
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 281
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ad;->b:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 284
    if-le v2, v1, :cond_31

    .line 287
    sparse-switch v2, :sswitch_data_34

    .line 294
    :goto_17
    :sswitch_17
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_size"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    :goto_2a
    return v0

    .line 288
    :sswitch_2b
    const/4 v0, 0x1

    goto :goto_17

    .line 290
    :sswitch_2d
    const/4 v0, 0x3

    goto :goto_17

    :sswitch_2f
    move v0, v1

    .line 291
    goto :goto_17

    :cond_31
    move v0, v2

    goto :goto_2a

    .line 287
    nop

    :sswitch_data_34
    .sparse-switch
        0xc -> :sswitch_2b
        0x12 -> :sswitch_17
        0x19 -> :sswitch_2d
        0x23 -> :sswitch_2f
    .end sparse-switch
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/client/ah;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->e:Lcom/google/android/youtube/core/client/ah;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/ad;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->g:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/player/ah;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/ad;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 230
    :goto_8
    return-void

    .line 209
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->g:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/player/ag;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/ag;-><init>(Lcom/google/android/youtube/core/player/ad;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_8
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter

    .prologue
    .line 101
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->b()V

    .line 103
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    .line 165
    :goto_a
    return-void

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/ai;->a(I)V

    .line 110
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->h:Z

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->b:Landroid/content/SharedPreferences;

    const-string v1, "subtitles_language_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->getDefaultSubtitleLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 113
    :goto_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 115
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->e:Lcom/google/android/youtube/core/client/ah;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/youtube/core/player/ae;

    invoke-direct {v4, p0, v0}, Lcom/google/android/youtube/core/player/ae;-><init>(Lcom/google/android/youtube/core/player/ad;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/client/ah;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_a

    .line 112
    :cond_5d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 163
    :cond_6c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->c()V

    goto :goto_a

    :cond_70
    move-object v0, v1

    goto :goto_2f
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "error retrieving subtitle"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->b()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p2, Lcom/google/android/youtube/core/model/Subtitle;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->d:Lcom/google/android/youtube/core/player/ah;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ah;->m()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/ad;->i:Z

    if-nez v0, :cond_5

    .line 202
    :goto_4
    return-void

    .line 172
    :cond_5
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ad;->e:Lcom/google/android/youtube/core/client/ah;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->a:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/core/player/af;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/af;-><init>(Lcom/google/android/youtube/core/player/ad;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/client/ah;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_4
.end method

.method public final a(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 233
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 255
    :pswitch_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 236
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/ad;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/ai;->a(I)V

    goto :goto_7

    .line 239
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    if-eqz v1, :cond_26

    .line 240
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->j:Lcom/google/android/youtube/core/model/Subtitle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/model/Subtitle;->getTextAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_26

    .line 242
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/player/ai;->a(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 246
    :cond_26
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/ai;->a()V

    goto :goto_7

    .line 252
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ad;->c:Lcom/google/android/youtube/core/player/ai;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/ai;->a()V

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
