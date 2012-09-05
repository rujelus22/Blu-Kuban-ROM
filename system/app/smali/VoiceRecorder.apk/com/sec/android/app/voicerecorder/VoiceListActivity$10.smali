.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;
.super Ljava/lang/Object;
.source "VoiceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDeleteDialog()Landroid/app/AlertDialog;
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
    .line 1548
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1550
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getContentURI()Landroid/net/Uri;

    move-result-object v0

    .line 1551
    .local v0, playerUri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1553
    .local v1, selectedUri:Landroid/net/Uri;
    if-eqz v0, :cond_28

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1554
    const-string v2, "VoiceListActivity"

    const-string v3, "Selected Item is Same with playing item, Stop play"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    .line 1558
    :cond_28
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J
    invoke-static {v6}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1560
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060035

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 1563
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 1565
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1566
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setFilenameAndDuration()V
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$2300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    .line 1567
    :cond_67
    return-void
.end method
