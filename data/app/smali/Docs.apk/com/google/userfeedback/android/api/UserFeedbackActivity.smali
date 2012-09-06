.class public Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.super Landroid/app/Activity;
.source "UserFeedbackActivity.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/CheckBox;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/Spinner;

.field private final a:Larm;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    .line 152
    return-void
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    .line 173
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    if-nez v0, :cond_15

    .line 174
    :cond_e
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finishActivity(I)V

    .line 266
    :goto_14
    return-void

    .line 179
    :cond_15
    invoke-direct {p0, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Landroid/app/Activity;)V

    .line 181
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 182
    sget v0, Larg;->gf_screenshot_option:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_2f
    sget v0, Larg;->gf_feedback:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/EditText;

    .line 191
    sget v0, Larg;->gf_send_system_info:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/CheckBox;

    .line 192
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/CheckBox;

    new-instance v1, Larw;

    invoke-direct {v1, p0, v2}, Larw;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Larq;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    sget v0, Larg;->gf_preview:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/Button;

    new-instance v1, Larq;

    invoke-direct {v1, p0}, Larq;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Larg;->gf_send:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Button;

    new-instance v1, Lars;

    invoke-direct {v1, p0, p0}, Lars;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v0, Larg;->gf_account_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Spinner;

    .line 224
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Spinner;

    new-instance v1, Lart;

    invoke-direct {v1, p0, p0}, Lart;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    sget v0, Larg;->gf_privacy_option:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    new-instance v1, Laru;

    invoke-direct {v1, p0}, Laru;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/Button;

    invoke-direct {p0, p0, v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    goto/16 :goto_14

    .line 185
    :cond_a5
    sget v0, Larg;->gf_send_screenshot:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    .line 186
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    new-instance v1, Larw;

    invoke-direct {v1, p0, v2}, Larw;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Larq;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2f
.end method

.method private a(ILarl;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    invoke-virtual {p2}, Larl;->a()I

    move-result v1

    .line 346
    invoke-virtual {p2}, Larl;->c()I

    move-result v2

    .line 347
    if-eqz v0, :cond_23

    .line 348
    if-gez v1, :cond_24

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :goto_16
    if-eqz v2, :cond_23

    .line 354
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    :cond_23
    return-void

    .line 351
    :cond_24
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    new-instance v0, Larr;

    invoke-direct {v0, p0, p1}, Larr;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Larr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    new-instance v0, Larx;

    invoke-direct {v0, p0, p1, p2, p3}, Larx;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V

    .line 373
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Larx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    return-void
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1, p2, p3}, Larm;->b(ZZLjava/lang/String;)V

    .line 363
    return-void
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_d
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 5
    .parameter

    .prologue
    .line 327
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Larl;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_33

    .line 330
    invoke-virtual {v0}, Larl;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 331
    sget v1, Larg;->gf_app_header:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :goto_1f
    sget v1, Larg;->gf_feedback_header:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILarl;)V

    .line 336
    sget v1, Larg;->gf_privacy:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILarl;)V

    .line 337
    sget v1, Larg;->gf_user_account:I

    invoke-direct {p0, v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(ILarl;)V

    .line 341
    :goto_2e
    return-void

    .line 333
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/app/Activity;)V

    goto :goto_1f

    .line 339
    :cond_33
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Landroid/app/Activity;)V

    goto :goto_2e
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    packed-switch p2, :pswitch_data_c

    .line 280
    :goto_3
    :pswitch_3
    return-void

    .line 272
    :pswitch_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 273
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    goto :goto_3

    .line 270
    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    sget v0, Larh;->gf_feedback_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setContentView(I)V

    .line 162
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a()V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 390
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 391
    invoke-static {p0}, Larm;->a(Landroid/app/Activity;)V

    .line 392
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 381
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a:Larm;

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 383
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 384
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    .line 386
    :cond_1e
    return-void
.end method
