.class public LarA;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackReportAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LarB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Larz;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    iput-object p1, p0, LarA;->a:Landroid/content/Context;

    .line 163
    invoke-direct {p0, p2}, LarA;->a(Larz;)V

    .line 164
    return-void
.end method

.method private a(Larz;)V
    .registers 6
    .parameter

    .prologue
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LarA;->a:Ljava/util/List;

    .line 291
    iget-object v0, p1, Larz;->description:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Larz;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 292
    const-string v0, "description"

    sget v1, Lari;->gf_error_report_description:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 294
    :cond_1a
    const-string v0, "packageName"

    sget v1, Lari;->gf_error_report_package_name:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 295
    const-string v0, "packageVersion"

    sget v1, Lari;->gf_error_report_package_version:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 296
    const-string v0, "packageVersionName"

    sget v1, Lari;->gf_error_report_package_version_name:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 297
    const-string v0, "installerPackageName"

    sget v1, Lari;->gf_error_report_installer_package_name:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 298
    const-string v0, "processName"

    sget v1, Lari;->gf_error_report_process_name:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 299
    const-string v0, "timestamp"

    sget v1, Lari;->gf_error_report_time:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 300
    const-string v0, "isSystemApp"

    sget v1, Lari;->gf_error_report_system_app:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 302
    sget v0, Lari;->gf_network_data:I

    invoke-direct {p0, v0}, LarA;->b(I)V

    .line 303
    const-string v0, "networkName"

    sget v1, Lari;->gf_network_name:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 305
    sget v0, Lari;->gf_error_report_system:I

    invoke-direct {p0, v0}, LarA;->b(I)V

    .line 306
    const-string v0, "device"

    sget v1, Lari;->gf_error_report_device:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 307
    const-string v0, "buildId"

    sget v1, Lari;->gf_error_report_build_id:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 308
    const-string v0, "buildType"

    sget v1, Lari;->gf_error_report_build_type:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 309
    const-string v0, "model"

    sget v1, Lari;->gf_error_report_model:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 310
    const-string v0, "product"

    sget v1, Lari;->gf_error_report_product:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 311
    const-string v0, "sdkInt"

    sget v1, Lari;->gf_error_report_sdk_version:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 312
    const-string v0, "release"

    sget v1, Lari;->gf_error_report_release:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 313
    const-string v0, "incremental"

    sget v1, Lari;->gf_error_report_incremental:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 314
    const-string v0, "codename"

    sget v1, Lari;->gf_error_report_codename:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 315
    const-string v0, "board"

    sget v1, Lari;->gf_error_report_board:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 316
    const-string v0, "brand"

    sget v1, Lari;->gf_error_report_brand:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 317
    const-string v0, "numGoogleAccounts"

    sget v1, Lari;->gf_error_report_user_accounts:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 320
    iget-object v0, p1, Larz;->installedPackages:Ljava/util/List;

    if-eqz v0, :cond_c7

    iget-object v0, p1, Larz;->installedPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 321
    const-string v0, "installedPackages"

    sget v1, Lari;->gf_error_report_installed_packages:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 324
    :cond_c7
    iget-object v0, p1, Larz;->runningApplications:Ljava/util/List;

    if-eqz v0, :cond_dc

    iget-object v0, p1, Larz;->runningApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 325
    const-string v0, "runningApplications"

    sget v1, Lari;->gf_error_report_running_apps:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 329
    :cond_dc
    iget-object v0, p1, Larz;->systemLog:Ljava/lang/String;

    if-eqz v0, :cond_f3

    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->b()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 330
    const-string v0, "systemLog"

    sget v1, Lari;->gf_error_report_system_log:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 333
    :cond_f3
    iget-object v0, p1, Larz;->crashData:Lary;

    if-eqz v0, :cond_135

    .line 334
    iget-object v0, p1, Larz;->crashData:Lary;

    .line 335
    sget v1, Lari;->gf_crash_header:I

    invoke-direct {p0, v1}, LarA;->b(I)V

    .line 336
    const-string v1, "exceptionClassName"

    sget v2, Lari;->gf_exception_class_name:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 337
    const-string v1, "throwFileName"

    sget v2, Lari;->gf_throw_file_name:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 338
    const-string v1, "throwLineNumber"

    sget v2, Lari;->gf_throw_line_number:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 339
    const-string v1, "throwClassName"

    sget v2, Lari;->gf_throw_class_name:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 340
    const-string v1, "throwMethodName"

    sget v2, Lari;->gf_throw_method_name:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 341
    iget-object v1, v0, Lary;->f:Ljava/lang/String;

    if-eqz v1, :cond_12c

    .line 342
    const-string v1, "exceptionMessage"

    sget v2, Lari;->gf_exception_message:I

    invoke-direct {p0, v0, v1, v2}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 344
    :cond_12c
    const-string v1, "stackTrace"

    sget v2, Lari;->gf_stack_trace:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 346
    :cond_135
    iget-object v0, p1, Larz;->screenshot:[B

    if-eqz v0, :cond_14f

    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 347
    sget v0, Lari;->gf_screenshot_preview:I

    invoke-direct {p0, v0}, LarA;->b(I)V

    .line 348
    const-string v0, "screenshot"

    sget v1, Lari;->gf_screenshot_preview:I

    invoke-direct {p0, p1, v0, v1}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 350
    :cond_14f
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 365
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 373
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 380
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LarA;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 381
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 388
    iget-object v6, p0, LarA;->a:Ljava/util/List;

    new-instance v0, LarB;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, LarB;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    new-instance v1, LarB;

    invoke-direct {v1, p1}, LarB;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarB;

    .line 397
    invoke-virtual {v0}, LarB;->c()Z

    move-result v1

    if-nez v1, :cond_f

    .line 404
    :goto_e
    return-void

    .line 401
    :cond_f
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LarA;->a:Landroid/content/Context;

    iget-object v3, v0, LarB;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    const-string v2, "feedback.FIELD_NAME"

    iget-object v0, v0, LarB;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, LarA;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarB;

    .line 200
    iget-object v1, p0, LarA;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 205
    invoke-virtual {v0}, LarB;->b()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 206
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Larg;->gf_section_header_row:I

    if-eq v2, v3, :cond_169

    .line 207
    :cond_23
    sget v2, Larh;->gf_section_header_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 208
    invoke-static {}, Larm;->a()Larm;

    move-result-object v1

    invoke-virtual {v1}, Larm;->a()LarF;

    move-result-object v1

    invoke-virtual {v1}, LarF;->a()Larl;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_59

    .line 211
    invoke-virtual {v3}, Larl;->b()I

    move-result v1

    if-gez v1, :cond_62

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_41
    invoke-virtual {v3}, Larl;->c()I

    move-result v1

    if-eqz v1, :cond_59

    move-object v1, v2

    .line 218
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Larl;->c()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_59
    :goto_59
    move-object v1, v2

    .line 223
    check-cast v1, Landroid/widget/TextView;

    .line 224
    iget v0, v0, LarB;->a:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 281
    :goto_61
    return-object v2

    .line 214
    :cond_62
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3}, Larl;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_41

    .line 229
    :cond_72
    invoke-virtual {v0}, LarB;->c()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 230
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Larg;->gf_expandable_row:I

    if-eq v2, v3, :cond_88

    .line 231
    :cond_82
    sget v2, Larh;->gf_expandable_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_88
    :goto_88
    invoke-virtual {v0}, LarB;->a()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 245
    sget v1, Larg;->gf_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    iget v2, v0, LarB;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    :goto_9b
    iget-object v1, v0, LarB;->a:Ljava/lang/Class;

    if-nez v1, :cond_ac

    .line 256
    sget v1, Larg;->gf_value:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 258
    :try_start_a7
    iget v2, v0, LarB;->b:I
    :try_end_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_a7 .. :try_end_a9} :catch_109

    packed-switch v2, :pswitch_data_16c

    :cond_ac
    :goto_ac
    move-object v2, p2

    .line 281
    goto :goto_61

    .line 233
    :cond_ae
    invoke-virtual {v0}, LarB;->a()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 234
    if-eqz p2, :cond_be

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Larg;->gf_screenshot_row:I

    if-eq v2, v3, :cond_88

    .line 235
    :cond_be
    sget v2, Larh;->gf_screenshot_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_88

    .line 239
    :cond_c5
    if-eqz p2, :cond_cf

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Larg;->gf_label_value_row:I

    if-eq v2, v3, :cond_88

    .line 240
    :cond_cf
    sget v2, Larh;->gf_label_value_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_88

    .line 248
    :cond_d6
    sget v1, Larg;->gf_feedback_screenshot_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 249
    iget-object v2, v0, LarB;->a:[B

    iget-object v3, v0, LarB;->a:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9b

    .line 260
    :pswitch_eb
    :try_start_eb
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 261
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    iget-object v0, v0, LarB;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_108
    .catch Ljava/lang/IllegalAccessException; {:try_start_eb .. :try_end_108} :catch_109

    goto :goto_ac

    .line 276
    :catch_109
    move-exception v0

    .line 277
    const-string v1, "UserFeedbackReportAdapter"

    const-string v2, "failed to obtain field value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 262
    :cond_112
    :try_start_112
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 263
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    iget-object v0, v0, LarB;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ac

    .line 264
    :cond_12f
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 265
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    iget-object v0, v0, LarB;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ac

    .line 270
    :pswitch_14e
    iget-object v2, v0, LarB;->a:Ljava/lang/reflect/Field;

    iget-object v0, v0, LarB;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 271
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 272
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_167
    .catch Ljava/lang/IllegalAccessException; {:try_start_112 .. :try_end_167} :catch_109

    goto/16 :goto_ac

    :cond_169
    move-object v2, p2

    goto/16 :goto_59

    .line 258
    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_14e
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, LarA;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarB;

    .line 193
    invoke-virtual {v0}, LarB;->b()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
