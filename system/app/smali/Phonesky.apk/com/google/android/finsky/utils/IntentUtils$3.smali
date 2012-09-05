.class final Lcom/google/android/finsky/utils/IntentUtils$3;
.super Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V

    return-void
.end method

.method private buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter "pm"
    .parameter "doc"
    .parameter "action"
    .parameter "accountName"

    .prologue
    .line 193
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 196
    const-string v1, "account"

    invoke-static {v0, v1, p4}, Lcom/google/android/finsky/utils/IntentUtils$3;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "asset_package"

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    return-object v0
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 216
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/utils/IntentUtils$3;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "pm"
    .parameter "accountName"

    .prologue
    .line 184
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 187
    const-string v1, "account"

    invoke-static {v0, v1, p2}, Lcom/google/android/finsky/utils/IntentUtils$3;->addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v0
.end method

.method public buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 203
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/android/finsky/utils/IntentUtils;->createLaunchIntent(Ljava/lang/String;Lcom/google/android/finsky/local/AssetStore;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1c

    .line 208
    const-string v1, "android.intent.action.RUN"

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/finsky/utils/IntentUtils$3;->buildItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    :cond_1c
    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;->setDefaultFlags(Landroid/content/Intent;)V

    .line 211
    return-object v0
.end method
