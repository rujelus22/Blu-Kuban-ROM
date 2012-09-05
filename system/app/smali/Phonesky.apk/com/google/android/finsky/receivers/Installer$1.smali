.class Lcom/google/android/finsky/receivers/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/Installer;->fetchAsset(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/Installer;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer$1;->this$0:Lcom/google/android/finsky/receivers/Installer;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/Installer$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 305
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.getAssetError"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$1;->this$0:Lcom/google/android/finsky/receivers/Installer;

    #getter for: Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/Installer;->access$000(Lcom/google/android/finsky/receivers/Installer;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$1;->this$0:Lcom/google/android/finsky/receivers/Installer;

    #calls: Lcom/google/android/finsky/receivers/Installer;->notifyListeners()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/Installer;->access$100(Lcom/google/android/finsky/receivers/Installer;)V

    .line 310
    const-string v0, "Error getting asset [%s] Error=[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/Installer$1;->val$packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method
