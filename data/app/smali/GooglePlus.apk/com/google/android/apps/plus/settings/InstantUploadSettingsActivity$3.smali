.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;
.super Landroid/os/AsyncTask;
.source "InstantUploadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "params"

    .prologue
    .line 216
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;

    .line 217
    .local v0, uploadAll:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 220
    const/4 v2, 0x0

    return-object v2
.end method
