.class Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;
.super Landroid/os/AsyncTask;
.source "OobInstantUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;->updateSystemSetting(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabled:Z

.field final synthetic val$wifiOnly:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;Landroid/content/Context;ZLcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$wifiOnly:Z

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-boolean p5, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$wifiOnly:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->setPhotoWiFiOnlySetting(Landroid/content/Context;Z)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->setVideoWiFiOnlySetting(Landroid/content/Context;Z)V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/OobInstantUploadFragment$1;->val$enabled:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/InstantUpload;->enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method
