.class Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;
.super Ljava/lang/Object;
.source "SocialHubMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryManager"
.end annotation


# instance fields
.field private mTaskCount:I

.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubMsgService;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/service/SocialHubMsgService;)V
    .registers 3
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->this$0:Lcom/sec/android/socialhub/service/SocialHubMsgService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    .line 820
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 812
    iget v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 812
    iput p1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    return p1
.end method

.method static synthetic access$210(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 812
    iget v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    return v0
.end method


# virtual methods
.method public runRetry(Z)V
    .registers 10
    .parameter "fromCallback"

    .prologue
    .line 824
    const/4 v6, 0x0

    .line 828
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->this$0:Lcom/sec/android/socialhub/service/SocialHubMsgService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->access$000(Lcom/sec/android/socialhub/service/SocialHubMsgService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    const-string v3, "status in (1, 3, 4)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 830
    if-eqz v6, :cond_96

    .line 832
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRetry()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not handled count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fromCallback - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b0

    .line 836
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRetry()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9c

    .line 840
    iget v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    .line 842
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRetry()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after delay time. task will be started. task count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->this$0:Lcom/sec/android/socialhub/service/SocialHubMsgService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubMsgService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->access$300(Lcom/sec/android/socialhub/service/SocialHubMsgService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;-><init>(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_96
    .catchall {:try_start_1 .. :try_end_96} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_96} :catch_a6

    .line 875
    :cond_96
    :goto_96
    if-eqz v6, :cond_9b

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 880
    :cond_9b
    :goto_9b
    return-void

    .line 860
    :cond_9c
    :try_start_9c
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRetry()"

    const-string v2, "already requested start task."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a5} :catch_a6

    goto :goto_96

    .line 869
    :catch_a6
    move-exception v7

    .line 871
    .local v7, e:Ljava/lang/Exception;
    :try_start_a7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_cd

    .line 875
    if-eqz v6, :cond_9b

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_9b

    .line 865
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b0
    :try_start_b0
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRetry()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all messages are handled except status REMOVING. task count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b0 .. :try_end_cc} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cc} :catch_a6

    goto :goto_96

    .line 875
    :catchall_cd
    move-exception v0

    if-eqz v6, :cond_d3

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d3
    throw v0
.end method
