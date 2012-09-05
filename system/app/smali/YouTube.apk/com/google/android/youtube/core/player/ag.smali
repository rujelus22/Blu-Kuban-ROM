.class final Lcom/google/android/youtube/core/player/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/ad;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/ad;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 215
    iget-object v1, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/player/ad;Lcom/google/android/youtube/core/model/Subtitle;)Lcom/google/android/youtube/core/model/Subtitle;

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->g(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/player/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ah;->n()V

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->h(Lcom/google/android/youtube/core/player/ad;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitles_language_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    :goto_36
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 226
    return-void

    .line 220
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->d(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/client/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/ad;->c(Lcom/google/android/youtube/core/player/ad;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/ah;->a(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/g;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ag;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->h(Lcom/google/android/youtube/core/player/ad;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_language_code"

    iget-object v0, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_36
.end method
