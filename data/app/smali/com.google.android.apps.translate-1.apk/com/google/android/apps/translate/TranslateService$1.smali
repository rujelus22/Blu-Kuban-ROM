.class Lcom/google/android/apps/translate/TranslateService$1;
.super Lcom/google/android/apps/translate/ITranslate$Stub;
.source "TranslateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/TranslateService;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateService$1;->this$0:Lcom/google/android/apps/translate/TranslateService;

    invoke-direct {p0}, Lcom/google/android/apps/translate/ITranslate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "text"
    .parameter "from"
    .parameter "to"
    .parameter "extra"

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 53
    const-string v1, "TranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile.getOfflineTranslate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/TranslateService$1;->this$0:Lcom/google/android/apps/translate/TranslateService;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/TranslateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/Profile;->getOfflineTranslate(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "TranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/TranslateService$1;->this$0:Lcom/google/android/apps/translate/TranslateService;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/TranslateService;->isNetworkAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "TranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProfilesAdapter.hasLocalModelFiles="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/TranslateService$1;->this$0:Lcom/google/android/apps/translate/TranslateService;

    #getter for: Lcom/google/android/apps/translate/TranslateService;->localProfiles:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/google/android/apps/translate/TranslateService;->access$000(Lcom/google/android/apps/translate/TranslateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalModelFiles(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_94
    const-string v1, "TranslateService"

    const-string v2, "Translate.translate ONLINE"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Lcom/google/android/apps/translate/Translate;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a1

    move-result-object v1

    .line 76
    :goto_a0
    return-object v1

    .line 74
    :catch_a1
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to perform translation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    goto :goto_a0
.end method
