.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;
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
    .line 713
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 733
    :goto_9
    return-void

    .line 718
    :pswitch_a
    const-string v0, "VoiceListActivity"

    const-string v1, "createPopup() - yes, play it"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startPlay(Landroid/net/Uri;)Z

    goto :goto_9

    .line 722
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->launchBrowser()V

    goto :goto_9

    .line 728
    :pswitch_38
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_9

    .line 715
    :pswitch_data_42
    .packed-switch 0x20
        :pswitch_a
        :pswitch_38
        :pswitch_25
        :pswitch_38
        :pswitch_a
        :pswitch_38
    .end packed-switch
.end method
