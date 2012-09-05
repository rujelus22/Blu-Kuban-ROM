.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$1;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->finish()V

    .line 99
    return-void
.end method
