.class Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$4;
.super Ljava/lang/Object;
.source "VoiceListDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->finish()V

    .line 161
    return-void
.end method
