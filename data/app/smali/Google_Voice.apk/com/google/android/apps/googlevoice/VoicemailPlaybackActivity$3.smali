.class Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;
.super Ljava/lang/Object;
.source "VoicemailPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "theDialog"
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    if-nez p2, :cond_12

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailPlaybackViaSpeaker(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$3;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->done()V

    .line 64
    return-void

    .line 62
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method
