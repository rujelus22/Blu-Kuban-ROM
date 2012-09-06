.class Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;
.super Landroid/os/AsyncTask;
.source "ProfilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/offline/ProfilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Lcom/google/android/apps/translate/offline/ProfilesAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;-><init>(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    .registers 7
    .parameter "id"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    #getter for: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languagePairs:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$300(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    .line 339
    .local v1, langPairProf:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    :try_start_18
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    #getter for: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->usbMode:Z
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$400(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 341
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 343
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLocalProfiles()Landroid/content/SharedPreferences;

    move-result-object v2

    #calls: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$500(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    .line 350
    :goto_2e
    return-object v1

    .line 345
    :cond_2f
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    #calls: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->fetchModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$600(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_34} :catch_35

    goto :goto_2e

    .line 347
    :catch_35
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 326
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->doInBackground([Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    #getter for: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$200(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->notifyDataSetChanged()V

    .line 357
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 326
    check-cast p1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->onPostExecute(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->this$0:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please wait..."

    const-string v3, "Downloaing model, this may take a few minutes ..."

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/google/android/apps/translate/offline/ProfilesAdapter;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->access$202(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    return-void
.end method
