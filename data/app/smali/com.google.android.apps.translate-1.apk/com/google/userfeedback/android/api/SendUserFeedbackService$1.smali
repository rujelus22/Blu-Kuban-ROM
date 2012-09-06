.class Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;
.super Ljava/lang/Object;
.source "SendUserFeedbackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/SendUserFeedbackService;->startSendingUserFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

.field final synthetic val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

.field final synthetic val$thisService:Landroid/app/Service;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Lcom/google/userfeedback/android/api/UserFeedbackReport;Landroid/app/Service;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iput-object p3, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$thisService:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup(Ljava/io/File;)V
    .registers 4
    .parameter "reportFile"

    .prologue
    .line 195
    if-eqz p1, :cond_16

    .line 196
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    #getter for: Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I
    invoke-static {v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->access$000(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->showToast(I)V

    .line 198
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 200
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$thisService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 203
    const/4 p1, 0x0

    .line 205
    :cond_16
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 165
    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-direct {v2, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 166
    .local v2, reportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;
    const/4 v3, 0x0

    .line 170
    .local v3, reportFile:Ljava/io/File;
    :try_start_d
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setSubmitted(Z)V

    .line 171
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-virtual {v2, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getFormattedFeedbackReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Ljava/io/File;

    move-result-object v3

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    const/4 v5, 0x3

    if-ge v1, v5, :cond_2f

    .line 173
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-virtual {v5, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->sendReport(Ljava/io/File;)I

    move-result v5

    div-int/lit8 v4, v5, 0x64

    .line 174
    .local v4, status:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    .line 175
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    sget v6, Lcom/google/userfeedback/android/api/R$string;->gf_report_being_sent:I

    #setter for: Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I
    invoke-static {v5, v6}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->access$002(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I

    .line 182
    .end local v4           #status:I
    :cond_2f
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_60
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_3f

    .line 186
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    .line 188
    .end local v1           #i:I
    :goto_35
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 189
    return-void

    .line 177
    .restart local v1       #i:I
    .restart local v4       #status:I
    :cond_39
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2f

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 183
    .end local v1           #i:I
    .end local v4           #status:I
    :catch_3f
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    :try_start_40
    const-string v5, "GFEEDBACK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_60

    .line 186
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    goto :goto_35

    .end local v0           #e:Ljava/io/IOException;
    :catchall_60
    move-exception v5

    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    throw v5
.end method
