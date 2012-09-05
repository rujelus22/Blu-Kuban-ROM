.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$3;
.super Ljava/lang/Object;
.source "VoiceListOptionShareAppListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->finish()V

    .line 229
    return-void
.end method
