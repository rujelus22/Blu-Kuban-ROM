.class public Lcom/google/android/apps/translate/offline/ModelManagementActivity;
.super Landroid/app/ListActivity;
.source "ModelManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/offline/ModelManagementActivity$1;,
        Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;
    }
.end annotation


# static fields
.field public static final OFFLINE_TRANSLATE_SUPPORTED:Z


# instance fields
.field private backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

.field private localProfiles:Landroid/content/SharedPreferences;

.field private profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final usbMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->usbMode:Z

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/translate/offline/ModelManagementActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->fetchProfiles()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Lcom/google/android/apps/translate/offline/ProfilesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/offline/ModelManagementActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->localProfiles:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private fetchProfiles()V
    .registers 5

    .prologue
    .line 106
    :try_start_0
    const-string v2, "http://dl.google.com/translate/offline/profiles.txt"

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalProfilesFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 108
    const-string v2, "profileFetcher"

    const-string v3, "Download profile error"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_13
    return-void

    .line 113
    :cond_14
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalProfilesFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v1, in:Ljava/io/DataInputStream;
    invoke-static {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;->parseFrom(Ljava/io/InputStream;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->backendProfiles:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles;

    .line 116
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 119
    const-string v2, "localModelProfiles"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->localProfiles:Landroid/content/SharedPreferences;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_13

    .line 121
    .end local v1           #in:Ljava/io/DataInputStream;
    :catch_35
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "profilesFetcher"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/google/android/apps/translate/R$layout;->offline_model_management:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->setContentView(I)V

    .line 50
    new-instance v0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    sget v2, Lcom/google/android/apps/translate/R$layout;->offline_model_adaptor_row:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/content/SharedPreferences;Z)V

    iput-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->profilesAdapter:Lcom/google/android/apps/translate/offline/ProfilesAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/offline/ModelManagementActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    new-instance v0, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;

    invoke-direct {v0, p0, v4}, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;-><init>(Lcom/google/android/apps/translate/offline/ModelManagementActivity;Lcom/google/android/apps/translate/offline/ModelManagementActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/offline/ModelManagementActivity$ProfileFetcherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method
