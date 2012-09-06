.class public Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    }
.end annotation


# static fields
.field private static final CONVERT_DATE:I = 0x1

.field private static final CONVERT_NONE:I = 0x0

.field static final EXTRA_FIELD_NAME:Ljava/lang/String; = "feedback.FIELD_NAME"

.field private static final TAG:Ljava/lang/String; = "UserFeedbackReportAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 3
    .parameter "context"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    .line 163
    invoke-direct {p0, p2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->buildRows(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 164
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 10
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 351
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 11
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 359
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 366
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 367
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .registers 14
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .parameter "convertType"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 371
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 372
    .local v6, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 374
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method private addSectionHeader(I)V
    .registers 4
    .parameter "headerResId"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    invoke-direct {v1, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method private buildRows(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .registers 6
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    .line 277
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 278
    const-string v1, "description"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_description:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 280
    :cond_1a
    const-string v1, "packageName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 281
    const-string v1, "packageVersion"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_version:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 282
    const-string v1, "packageVersionName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_version_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 283
    const-string v1, "installerPackageName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_installer_package_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 284
    const-string v1, "processName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_process_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 285
    const-string v1, "timestamp"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_time:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 286
    const-string v1, "isSystemApp"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system_app:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 288
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_network_data:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 289
    const-string v1, "networkName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_network_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 291
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 292
    const-string v1, "device"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_device:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 293
    const-string v1, "buildId"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_build_id:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 294
    const-string v1, "buildType"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_build_type:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 295
    const-string v1, "model"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_model:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 296
    const-string v1, "product"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_product:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 297
    const-string v1, "sdkInt"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_sdk_version:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 298
    const-string v1, "release"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_release:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 299
    const-string v1, "incremental"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_incremental:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 300
    const-string v1, "codename"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_codename:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 301
    const-string v1, "board"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_board:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 302
    const-string v1, "brand"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_brand:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 303
    const-string v1, "numGoogleAccounts"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_user_accounts:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 306
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installedPackages:Ljava/util/List;

    if-eqz v1, :cond_c7

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installedPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c7

    .line 307
    const-string v1, "installedPackages"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_installed_packages:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 310
    :cond_c7
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    if-eqz v1, :cond_dc

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_dc

    .line 311
    const-string v1, "runningApplications"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_running_apps:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 315
    :cond_dc
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    if-eqz v1, :cond_f3

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeSystemLogs()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 316
    const-string v1, "systemLog"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system_log:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 319
    :cond_f3
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    if-eqz v1, :cond_135

    .line 320
    iget-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 321
    .local v0, crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_crash_header:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 322
    const-string v1, "exceptionClassName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_exception_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 323
    const-string v1, "throwFileName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_file_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 324
    const-string v1, "throwLineNumber"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_line_number:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 325
    const-string v1, "throwClassName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 326
    const-string v1, "throwMethodName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_method_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 327
    iget-object v1, v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_12c

    .line 328
    const-string v1, "exceptionMessage"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_exception_message:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 330
    :cond_12c
    const-string v1, "stackTrace"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_stack_trace:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 332
    .end local v0           #crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    :cond_135
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    if-eqz v1, :cond_14f

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeScreenshot()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 333
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_screenshot_preview:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 334
    const-string v1, "screenshot"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_screenshot_preview:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 336
    :cond_14f
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 200
    .local v9, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 203
    .local v5, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v7, p2

    .line 205
    .local v7, result:Landroid/view/View;
    invoke-virtual {v9}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 206
    if-eqz v7, :cond_2a

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v13

    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_section_header_row:I

    if-eq v13, v14, :cond_33

    .line 207
    :cond_2a
    sget v13, Lcom/google/userfeedback/android/api/R$layout;->gf_section_header_row:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    :cond_33
    move-object v6, v7

    .line 209
    check-cast v6, Landroid/widget/TextView;

    .line 210
    .local v6, label:Landroid/widget/TextView;
    iget v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    move-object v8, v7

    .line 267
    .end local v6           #label:Landroid/widget/TextView;
    .end local v7           #result:Landroid/view/View;
    .local v8, result:Landroid/view/View;
    :goto_3c
    return-object v8

    .line 215
    .end local v8           #result:Landroid/view/View;
    .restart local v7       #result:Landroid/view/View;
    :cond_3d
    invoke-virtual {v9}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isExpandable()Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 216
    if-eqz v7, :cond_4d

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v13

    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_expandable_row:I

    if-eq v13, v14, :cond_56

    .line 217
    :cond_4d
    sget v13, Lcom/google/userfeedback/android/api/R$layout;->gf_expandable_row:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 230
    :cond_56
    :goto_56
    invoke-virtual {v9}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isImageView()Z

    move-result v13

    if-nez v13, :cond_aa

    .line 231
    sget v13, Lcom/google/userfeedback/android/api/R$id;->gf_label:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 232
    .restart local v6       #label:Landroid/widget/TextView;
    iget v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 241
    .end local v6           #label:Landroid/widget/TextView;
    :goto_69
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-nez v13, :cond_7a

    .line 242
    sget v13, Lcom/google/userfeedback/android/api/R$id;->gf_value:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 244
    .local v12, value:Landroid/widget/TextView;
    :try_start_75
    iget v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->convertType:I
    :try_end_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_77} :catch_de

    packed-switch v13, :pswitch_data_13e

    .end local v12           #value:Landroid/widget/TextView;
    :cond_7a
    :goto_7a
    move-object v8, v7

    .line 267
    .end local v7           #result:Landroid/view/View;
    .restart local v8       #result:Landroid/view/View;
    goto :goto_3c

    .line 219
    .end local v8           #result:Landroid/view/View;
    .restart local v7       #result:Landroid/view/View;
    :cond_7c
    invoke-virtual {v9}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isImageView()Z

    move-result v13

    if-eqz v13, :cond_96

    .line 220
    if-eqz v7, :cond_8c

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v13

    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_screenshot_row:I

    if-eq v13, v14, :cond_56

    .line 221
    :cond_8c
    sget v13, Lcom/google/userfeedback/android/api/R$layout;->gf_screenshot_row:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_56

    .line 225
    :cond_96
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v13

    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_label_value_row:I

    if-eq v13, v14, :cond_56

    .line 226
    :cond_a0
    sget v13, Lcom/google/userfeedback/android/api/R$layout;->gf_label_value_row:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto :goto_56

    .line 234
    :cond_aa
    sget v13, Lcom/google/userfeedback/android/api/R$id;->gf_feedback_screenshot_view:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 235
    .local v4, im:Landroid/widget/ImageView;
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    const/4 v14, 0x0

    iget-object v15, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    array-length v15, v15

    invoke-static {v13, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_69

    .line 246
    .end local v4           #im:Landroid/widget/ImageView;
    .restart local v12       #value:Landroid/widget/TextView;
    :pswitch_c0
    :try_start_c0
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 247
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v14, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_dd
    .catch Ljava/lang/IllegalAccessException; {:try_start_c0 .. :try_end_dd} :catch_de

    goto :goto_7a

    .line 262
    :catch_de
    move-exception v2

    .line 263
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v13, "UserFeedbackReportAdapter"

    const-string v14, "failed to obtain field value"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 248
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :cond_e7
    :try_start_e7
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_104

    .line 249
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v14, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 250
    :cond_104
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 251
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v14, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 256
    :pswitch_123
    iget-object v13, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v14, v9, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    .line 257
    .local v10, unixDate:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 258
    .local v1, date:Ljava/util/Date;
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 259
    .local v3, format:Ljava/text/DateFormat;
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_13c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e7 .. :try_end_13c} :catch_de

    goto/16 :goto_7a

    .line 244
    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_123
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 193
    .local v0, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onListItemClick(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 381
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 383
    .local v1, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isExpandable()Z

    move-result v2

    if-nez v2, :cond_f

    .line 390
    :goto_e
    return-void

    .line 387
    :cond_f
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feedback.FIELD_NAME"

    iget-object v3, v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method
