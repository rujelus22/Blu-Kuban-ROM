.class public Lcom/google/userfeedback/android/api/UserFeedback;
.super Ljava/lang/Object;
.source "UserFeedback.java"


# static fields
.field private static mServiceToastShown:Z

.field private static sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;


# instance fields
.field private mFeedbacktext:Ljava/lang/String;

.field private mIncludeScreenshot:Z

.field private mIncludeSystemLogs:Z

.field private mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

.field public mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

.field private mReportBuilderTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p0, Lcom/google/userfeedback/android/api/UserFeedback;->sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedback;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    return-object v0
.end method

.method private buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 16
    .parameter "activity"
    .parameter "includeScreenshot"
    .parameter "includeSystemLogs"
    .parameter "feedbackText"
    .parameter "messageText"

    .prologue
    .line 175
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_yes:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedback$2;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback$2;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;ZZLjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_no:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedback$1;

    invoke-direct {v2, p0}, Lcom/google/userfeedback/android/api/UserFeedback$1;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 195
    .local v6, alert:Landroid/app/AlertDialog;
    return-object v6
.end method

.method protected static flushBitmapsOnDestroy(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->nullBitmapsRecursively(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method protected static isServiceToastShown()Z
    .registers 1

    .prologue
    .line 319
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    return v0
.end method

.method private static nullBitmapsRecursively(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 355
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v0, p0

    .line 356
    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    .local v0, g:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->nullBitmapsRecursively(Landroid/view/View;)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 360
    .end local v0           #g:Landroid/view/ViewGroup;
    .end local v1           #i:I
    :cond_18
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_22

    .line 361
    check-cast p0, Landroid/widget/ImageView;

    .end local p0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_22
    return-void
.end method

.method protected static serviceToastShown()V
    .registers 1

    .prologue
    .line 326
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    .line 327
    return-void
.end method

.method protected static userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/userfeedback/android/api/UserFeedback;->sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    return-object v0
.end method


# virtual methods
.method protected blockOnReportConstruction()V
    .registers 4

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_5} :catch_11

    .line 309
    :goto_5
    return-void

    .line 304
    :catch_6
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 306
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_11
    move-exception v0

    .line 307
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected buildReport()V
    .registers 3

    .prologue
    .line 204
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    .line 205
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedbackReport;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .line 206
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->buildReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method protected cleanupReport()V
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .line 285
    return-void
.end method

.method protected configureFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .registers 4
    .parameter "spec"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 113
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/FeedbackConnectivityReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->buildReport()V

    .line 115
    return-void
.end method

.method protected createDialog(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;
    .registers 11
    .parameter "activity"
    .parameter "includeScreenshot"
    .parameter "includeSystemLogs"
    .parameter "feedbackText"

    .prologue
    .line 152
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 153
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForEmptyDescription()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 154
    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_should_submit_on_empty_description:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    :goto_21
    return-object v0

    .line 161
    :cond_22
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_44

    .line 162
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForAnonymousSubmission()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 163
    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_should_submit_anonymously:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_21

    .line 170
    :cond_44
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected getFeedbackText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mFeedbacktext:Ljava/lang/String;

    return-object v0
.end method

.method protected getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    return-object v0
.end method

.method public getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    return-object v0
.end method

.method protected isReportReady()Z
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected setFeedbackText(Ljava/lang/String;)V
    .registers 5
    .parameter "feedbackText"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mFeedbacktext:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->isReportReady()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    :try_start_8
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iput-object p1, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    .line 263
    :cond_c
    :goto_c
    return-void

    .line 255
    :catch_d
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "GFEEDBACK"

    const-string v2, "Race condition made report description to throw an NPE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method protected setIncludeScreenshot(Z)V
    .registers 2
    .parameter "includeScreenshot"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeScreenshot:Z

    .line 224
    return-void
.end method

.method protected setIncludeSystemLogs(Z)V
    .registers 2
    .parameter "includeSystemLogs"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeSystemLogs:Z

    .line 238
    return-void
.end method

.method protected setUserInputParams(ZZLjava/lang/String;)V
    .registers 4
    .parameter "includeScreenshot"
    .parameter "includeSystemLogs"
    .parameter "feedbackText"

    .prologue
    .line 214
    invoke-virtual {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setFeedbackText(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback;->setIncludeScreenshot(Z)V

    .line 216
    invoke-virtual {p0, p2}, Lcom/google/userfeedback/android/api/UserFeedback;->setIncludeSystemLogs(Z)V

    .line 217
    return-void
.end method

.method protected shouldIncludeScreenshot()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeScreenshot:Z

    return v0
.end method

.method protected shouldIncludeSystemLogs()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeSystemLogs:Z

    return v0
.end method

.method public startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .registers 3
    .parameter "spec"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;I)V

    .line 81
    return-void
.end method

.method public startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;I)V
    .registers 6
    .parameter "spec"
    .parameter "requestCode"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback;->configureFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method

.method protected submitFeedback(ZZLjava/lang/String;)V
    .registers 6
    .parameter "includeScreenshot"
    .parameter "includeSystemLogs"
    .parameter "feedbackText"

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setUserInputParams(ZZLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setReadyToSubmit(Z)V

    .line 144
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method
