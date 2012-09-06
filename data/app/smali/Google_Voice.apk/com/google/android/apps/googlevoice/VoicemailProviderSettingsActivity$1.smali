.class Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;
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
    .line 173
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 177
    return-void
.end method
