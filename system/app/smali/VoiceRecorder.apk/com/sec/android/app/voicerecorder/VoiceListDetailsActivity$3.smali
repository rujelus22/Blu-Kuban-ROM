.class Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$3;
.super Ljava/lang/Object;
.source "VoiceListDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 150
    const/16 v0, 0x54

    if-ne p2, v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->finish()V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
