.class Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;->this$1:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    iput p2, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "theView"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;->this$1:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iget v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;->val$position:I

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailPlaybackViaSpeaker(Z)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;->this$1:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->done()V

    .line 134
    return-void

    .line 132
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
