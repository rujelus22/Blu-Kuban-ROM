.class Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$2;
.super Ljava/lang/Object;
.source "VoicemailPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$2;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "theDialog"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$2;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->done()V

    .line 71
    return-void
.end method
