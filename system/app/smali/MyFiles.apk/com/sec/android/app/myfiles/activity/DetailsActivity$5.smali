.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$102(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$100(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$100(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$202(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/io/File;)Ljava/io/File;

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$200(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$302(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_82

    .line 168
    :try_start_3c
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;
    invoke-static {v4}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$200(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/io/File;

    move-result-object v4

    #calls: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getItemSize(Ljava/io/File;)J
    invoke-static {v3, v4}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$500(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getSizeFormat(J)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mSize:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$402(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/StackOverflowError; {:try_start_3c .. :try_end_53} :catch_77
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_53} :catch_82

    .line 174
    :goto_53
    :try_start_53
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$700(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$200(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/myfiles/Utils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mTime:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$602(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    #getter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$800(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    :goto_76
    return-void

    .line 170
    :catch_77
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/StackOverflowError;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mSize:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->access$402(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->printStackTrace()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_81} :catch_82

    goto :goto_53

    .line 178
    .end local v0           #e:Ljava/lang/StackOverflowError;
    :catch_82
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76
.end method
