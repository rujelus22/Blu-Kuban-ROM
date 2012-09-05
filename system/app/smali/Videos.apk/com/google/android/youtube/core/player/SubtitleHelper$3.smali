.class Lcom/google/android/youtube/core/player/SubtitleHelper$3;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/SubtitleHelper;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 215
    .local v0, selected:Lcom/google/android/youtube/core/model/SubtitleTrack;
    iget-object v1, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 216
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->currentSubtitle:Lcom/google/android/youtube/core/model/Subtitle;
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$602(Lcom/google/android/youtube/core/player/SubtitleHelper;Lcom/google/android/youtube/core/model/Subtitle;)Lcom/google/android/youtube/core/model/Subtitle;

    .line 217
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->listener:Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$700(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper$Listener;->onSubtitleDisabled()V

    .line 218
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$800(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_language_code"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$300(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$200(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/SubtitlesClient;->requestSubtitle(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Callback;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$3;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    #getter for: Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$800(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitles_language_code"

    iget-object v3, v0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_36
.end method
