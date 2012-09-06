.class Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;
.super Landroid/os/AsyncTask;
.source "ModelManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/offline/ModelManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileFetcherTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/offline/ModelManagementActivity;Lcom/google/android/apps/translate/offline/ModelManagementActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;-><init>(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 3
    .parameter "id"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #calls: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->fetchProfiles()V
    invoke-static {v0}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$200(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguageProfilesCount()I

    move-result v1

    if-lez v1, :cond_91

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguagePairProfilesCount()I

    move-result v1

    if-lez v1, :cond_91

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->notifyDataSetChanged()V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->localProfiles:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$500(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalProfiles(Landroid/content/SharedPreferences;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getCommonProfile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setCommonProfile(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)V

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4c
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguageProfilesCount()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguageProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->addLanguageProfile(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 87
    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguagePairProfilesCount()I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    invoke-static {v2}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->getLanguagePairProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->add(Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 91
    .end local v0           #i:I
    :cond_91
    const-string v1, "profilesFetcher"

    const-string v2, "No profiles"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_98
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$100(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    #getter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->this$0:Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    const-string v2, "Please wait..."

    const-string v3, "Retrieving profiles ..."

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/google/android/apps/translate/offline/ModelManagementActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->access$102(Lcom/google/android/apps/translate/offline/ModelManagementActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 66
    return-void
.end method
