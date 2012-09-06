.class Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;
.super Ljava/lang/Object;
.source "VoicemailProviderSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setResult(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->finish()V

    .line 236
    return-void
.end method
