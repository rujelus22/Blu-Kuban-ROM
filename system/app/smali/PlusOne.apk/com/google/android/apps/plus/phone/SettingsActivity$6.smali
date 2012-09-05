.class Lcom/google/android/apps/plus/phone/SettingsActivity$6;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 949
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .parameter "params"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    .line 956
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getUploadAllUri()Landroid/net/Uri;

    move-result-object v1

    .line 957
    .local v1, uploadAll:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 958
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$6;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 960
    const/4 v3, 0x0

    return-object v3
.end method
