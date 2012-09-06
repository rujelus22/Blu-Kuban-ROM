.class public Larj;
.super Ljava/lang/Object;
.source "SendUserFeedbackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Service;

.field final synthetic a:Larz;

.field final synthetic a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Larz;Landroid/app/Service;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iput-object p2, p0, Larj;->a:Larz;

    iput-object p3, p0, Larj;->a:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_15

    .line 196
    iget-object v0, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(I)V

    .line 198
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 200
    iget-object v0, p0, Larj;->a:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 205
    :cond_15
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 165
    new-instance v0, LarC;

    iget-object v1, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, v1, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:LarF;

    invoke-direct {v0, v1}, LarC;-><init>(LarF;)V

    .line 166
    const/4 v1, 0x0

    .line 170
    :try_start_d
    iget-object v2, p0, Larj;->a:Larz;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Larz;->a(Z)V

    .line 171
    iget-object v2, p0, Larj;->a:Larz;

    invoke-virtual {v0, v2}, LarC;->a(Larz;)Ljava/io/File;

    move-result-object v1

    .line 172
    const/4 v0, 0x0

    :goto_1a
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2f

    .line 173
    iget-object v2, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-virtual {v2, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Ljava/io/File;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    .line 174
    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 175
    iget-object v0, p0, Larj;->a:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    sget v2, Lari;->gf_report_being_sent:I

    invoke-static {v0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I

    .line 182
    :cond_2f
    invoke-direct {p0, v1}, Larj;->a(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_60
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_3f

    .line 186
    invoke-direct {p0, v1}, Larj;->a(Ljava/io/File;)V

    .line 188
    :goto_35
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 189
    return-void

    .line 177
    :cond_39
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2f

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 183
    :catch_3f
    move-exception v0

    .line 184
    :try_start_40
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_60

    .line 186
    invoke-direct {p0, v1}, Larj;->a(Ljava/io/File;)V

    goto :goto_35

    :catchall_60
    move-exception v0

    invoke-direct {p0, v1}, Larj;->a(Ljava/io/File;)V

    throw v0
.end method
