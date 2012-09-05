.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 19
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$900(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 747
    .local v5, lLanguage:J
    invoke-static {v5, v6}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleDefaultLanguage(J)V

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v1

    const-wide/16 v3, 0x457

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSetConfig(JJJ)I

    move-result v15

    .line 751
    .local v15, ret:I
    const/4 v1, -0x1

    if-ne v15, v1, :cond_3d

    .line 752
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createLanguagePopup() - ARCSubtitleSetConfig fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 770
    :goto_3c
    return-void

    .line 757
    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v7

    move/from16 v0, p2

    int-to-long v9, v0

    const-wide/16 v11, 0x0

    move-wide v13, v5

    invoke-static/range {v7 .. v14}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSelectTrack(JJJJ)I

    move-result v15

    .line 759
    if-eqz v15, :cond_6f

    .line 760
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createLanguagePopup() - ARCSubtitleSelectTrack fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const-wide/16 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;J)J

    goto :goto_3c

    .line 766
    :cond_6f
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 767
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto :goto_3c
.end method
