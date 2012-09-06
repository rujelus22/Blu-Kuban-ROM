.class Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;
.super Ljava/lang/Object;
.source "VoicemailProviderSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone.VoicemailNumber"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->finish()V

    .line 214
    return-void
.end method
