.class Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;
.super Ljava/lang/Object;
.source "DownloadLanguagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 138
    iput-object p1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v1}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->finish()V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.settings.SwypeInputMethodSettingsLanguages"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$4;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
