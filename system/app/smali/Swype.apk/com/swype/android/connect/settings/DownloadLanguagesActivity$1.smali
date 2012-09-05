.class Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;
.super Ljava/lang/Object;
.source "DownloadLanguagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;

    .line 58
    invoke-virtual {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e
    if-ltz v1, :cond_31

    .line 59
    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCheck(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 60
    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getLanguageKey(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.swype.android.connect.DownloadLanguage"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v2, v3}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->remove(I)V

    .line 58
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 68
    :cond_31
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->finish()V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.settings.SwypeInputMethodSettingsLanguages"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
