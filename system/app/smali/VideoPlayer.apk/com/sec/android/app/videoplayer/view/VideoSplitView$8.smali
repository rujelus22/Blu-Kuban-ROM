.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;
.super Landroid/content/BroadcastReceiver;
.source "VideoSplitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 2
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 934
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 937
    const-string v2, "VideoSplitView"

    const-string v3, "[BroadcastReceiver-mMediaReceiver] SD card mounted."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_23

    .line 941
    :try_start_19
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 942
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_5a

    .line 948
    :cond_23
    :goto_23
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    if-nez v2, :cond_48

    .line 950
    :try_start_27
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_48} :catch_63

    .line 957
    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_59

    .line 958
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 959
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iput-object v7, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    .line 992
    :cond_59
    :goto_59
    return-void

    .line 943
    :catch_5a
    move-exception v1

    .line 944
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "VideoSplitView"

    const-string v3, "Intent.ACTION_MEDIA_MOUNTED loadingIndicatorSDCard.cancel() or loadingIndicatorSDCard.dismiss() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 952
    .end local v1           #e:Ljava/lang/Exception;
    :catch_63
    move-exception v1

    .line 953
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "VideoSplitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent.ACTION_MEDIA_MOUNTED loadingIndicatorSDCard.show() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 961
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7d
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 962
    const-string v2, "VideoSplitView"

    const-string v3, "[BroadcastReceiver-mMediaReceiver] Media Scanner started."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_59

    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_59

    .line 966
    :try_start_98
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b9} :catch_ba

    goto :goto_59

    .line 968
    :catch_ba
    move-exception v1

    .line 969
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "VideoSplitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent.ACTION_MEDIA_SCANNER_STARTED loadingIndicatorSDCard.show() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 972
    .end local v1           #e:Ljava/lang/Exception;
    :cond_d4
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 973
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_ef

    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-ne v2, v3, :cond_ef

    .line 975
    :try_start_e8
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ed} :catch_f8

    .line 979
    :goto_ed
    sput-object v7, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    .line 981
    :cond_ef
    const-string v2, "VideoSplitView"

    const-string v3, "[BroadcastReceiver-mMediaReceiver] Media Scanner finished."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 976
    :catch_f8
    move-exception v1

    .line 977
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "VideoSplitView"

    const-string v3, "loadingIndicatorSDCard.dismiss() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 984
    .end local v1           #e:Ljava/lang/Exception;
    :cond_101
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 985
    const-string v2, "VideoSplitView"

    const-string v3, "[BroadcastReceiver-mMediaReceiver] SD card mounted."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_59

    .line 988
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 989
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iput-object v7, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_59
.end method
