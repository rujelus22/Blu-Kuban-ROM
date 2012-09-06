.class public Lcom/google/android/apps/docs/app/OcrCameraActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "OcrCameraActivity.java"


# instance fields
.field private a:Landroid/net/Uri;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-class v1, Lcom/google/android/apps/docs/app/OcrCameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    return-object v0

    .line 167
    :cond_1d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 95
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->finish()V

    .line 121
    :goto_14
    return-void

    .line 99
    :cond_15
    if-eqz p2, :cond_29

    .line 100
    const-string v0, "keySaveImageUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 101
    if-eqz v0, :cond_27

    :goto_21
    invoke-static {v1}, LafQ;->a(Z)V

    .line 102
    iput-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Landroid/net/Uri;

    goto :goto_14

    :cond_27
    move v1, v2

    .line 101
    goto :goto_21

    .line 103
    :cond_29
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 105
    :try_start_35
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    const-string v1, "title"

    sget v2, LcY;->ocr_image_title_drivev2:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "description"

    sget v2, LcY;->ocr_image_description_drivev2:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Landroid/net/Uri;

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "output"

    iget-object v2, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_76
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_35 .. :try_end_76} :catch_77
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_76} :catch_7c

    goto :goto_14

    .line 113
    :catch_77
    move-exception v0

    .line 114
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->e()V

    goto :goto_14

    .line 115
    :catch_7c
    move-exception v0

    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->e()V

    goto :goto_14

    .line 119
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->finish()V

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.autofocus"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 87
    const-string v0, "OcrCameraActivity"

    const-string v1, "No external storage present, cannot take picture."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget v0, LcY;->camera_ocr_no_sdcard:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->finish()V

    .line 90
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    if-ne p1, v5, :cond_3f

    .line 135
    const/4 v0, -0x1

    if-ne p2, v0, :cond_40

    .line 137
    sget v0, LcY;->camera_ocr_default_name:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Ljava/lang/String;

    const-string v4, "image/jpeg"

    move-object v0, p0

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->finish()V

    .line 152
    :cond_3f
    :goto_3f
    return-void

    .line 146
    :cond_40
    if-eqz p2, :cond_4b

    .line 147
    sget v0, LcY;->camera_ocr_error_capture:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->finish()V

    goto :goto_3f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:LdE;

    const-string v2, "/ocrCamera"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 75
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 126
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "keySaveImageUri"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    return-void
.end method
