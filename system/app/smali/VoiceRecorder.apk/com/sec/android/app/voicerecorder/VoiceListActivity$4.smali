.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$4;
.super Ljava/lang/Object;
.source "VoiceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDRMPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 740
    return-void
.end method
