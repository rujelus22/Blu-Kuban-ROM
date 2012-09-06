.class public Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.super Landroid/app/Activity;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;,
        Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;
    }
.end annotation


# instance fields
.field private mChooseAccount:Landroid/widget/Spinner;

.field private mFeedbackText:Landroid/widget/EditText;

.field private mIncludeScreenshot:Landroid/widget/CheckBox;

.field private mIncludeSystemLogs:Landroid/widget/CheckBox;

.field private mPreviewFeedback:Landroid/widget/Button;

.field private mSubmitFeedback:Landroid/widget/Button;

.field private final mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeScreenshot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeSystemLogs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->handleClick(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    return-object v0
.end method

.method private computeResourcesAndUpdateUi(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .registers 6
    .parameter "context"
    .parameter "accountSpinner"
    .parameter "previewButton"

    .prologue
    .line 337
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    .line 339
    .local v0, updateUi:Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    return-void
.end method

.method private configureActivity()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 168
    move-object v0, p0

    .line 172
    .local v0, cx:Landroid/content/Context;
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    if-nez v4, :cond_16

    .line 173
    :cond_f
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 174
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finishActivity(I)V

    .line 265
    :goto_15
    return-void

    .line 178
    :cond_16
    invoke-direct {p0, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->updateAppIcon(Landroid/app/Activity;)V

    .line 180
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v4

    if-nez v4, :cond_a7

    .line 181
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_screenshot_option:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, screenshotOptionView:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .end local v2           #screenshotOptionView:Landroid/view/View;
    :goto_30
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_feedback:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;

    .line 190
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send_system_info:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    .line 191
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;

    invoke-direct {v5, p0, v6}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_preview:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    .line 194
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;

    invoke-direct {v5, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    move-object v3, p0

    .line 205
    .local v3, thisActivity:Landroid/app/Activity;
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mSubmitFeedback:Landroid/widget/Button;

    .line 206
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mSubmitFeedback:Landroid/widget/Button;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;

    invoke-direct {v5, p0, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_account_spinner:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    .line 223
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_privacy_option:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, privacyView:Landroid/view/View;
    new-instance v4, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;

    invoke-direct {v4, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mChooseAccount:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mPreviewFeedback:Landroid/widget/Button;

    invoke-direct {p0, p0, v4, v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->computeResourcesAndUpdateUi(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    goto/16 :goto_15

    .line 184
    .end local v1           #privacyView:Landroid/view/View;
    .end local v3           #thisActivity:Landroid/app/Activity;
    :cond_a7
    sget v4, Lcom/google/userfeedback/android/api/R$id;->gf_send_screenshot:I

    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    .line 185
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    new-instance v5, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;

    invoke-direct {v5, p0, v6}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_30
.end method

.method private handleClick(ZZLjava/lang/String;)V
    .registers 5
    .parameter "includeScreenshot"
    .parameter "includeLogs"
    .parameter "descriptionText"

    .prologue
    .line 327
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    .line 328
    .local v0, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setUserInputParams(ZZLjava/lang/String;)V

    .line 329
    return-void
.end method

.method private shouldIncludeScreenshot()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeScreenshot:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_d
.end method

.method private shouldIncludeSystemLogs()Z
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mIncludeSystemLogs:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private updateAppIcon(Landroid/app/Activity;)V
    .registers 4
    .parameter "thisActivity"

    .prologue
    .line 322
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;

    invoke-direct {v0, p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 269
    packed-switch p2, :pswitch_data_c

    .line 279
    :goto_3
    :pswitch_3
    return-void

    .line 271
    :pswitch_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 272
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    goto :goto_3

    .line 269
    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sget v0, Lcom/google/userfeedback/android/api/R$layout;->gf_feedback_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setContentView(I)V

    .line 161
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->configureActivity()V

    .line 162
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 357
    invoke-static {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->flushBitmapsOnDestroy(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 349
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 350
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    .line 352
    :cond_1e
    return-void
.end method
