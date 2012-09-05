.class public Lcom/google/android/apps/uploader/UploadIntentParser;
.super Ljava/lang/Object;
.source "UploadIntentParser.java"


# static fields
.field public static final EXTRA_UPLOAD_INFO:Ljava/lang/String; = "com.google.android.apps.uploader.extra.uploadInfo"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadIntentParser;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private parseUploadInfo(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 84
    const-string v0, "com.google.android.apps.uploader.extra.url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v0, "com.google.android.apps.uploader.extra.requestTemplate"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    const-string v0, "com.google.android.apps.uploader.extra.account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v0, "com.google.android.apps.uploader.extra.authTokenType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v0, "com.google.android.apps.uploader.extra.destination"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    if-eqz v3, :cond_23

    if-nez v4, :cond_2c

    .line 91
    :cond_23
    const-string v0, "MediaUploader"

    const-string v1, "Upload intent missing URL or request template"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 101
    :goto_2b
    return-object v0

    .line 95
    :cond_2c
    new-instance v0, Lcom/google/android/apps/uploader/FileInfo;

    iget-object v6, p0, Lcom/google/android/apps/uploader/UploadIntentParser;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/google/android/apps/uploader/FileInfo;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Lcom/google/android/apps/uploader/FileInfo;->retrieveFileProperties(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 97
    const-string v0, "MediaUploader"

    const-string v1, "Could not retrieve file info from upload intent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 98
    goto :goto_2b

    .line 101
    :cond_46
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/FileInfo;->toUploadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    goto :goto_2b
.end method


# virtual methods
.method public createServiceIntent(Lcom/google/android/apps/uploader/UploadInfo;)Landroid/content/Intent;
    .registers 5
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadIntentParser;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public createServiceIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/uploader/UploadInfo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadIntentParser;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public isMultipleUploadIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 40
    const-string v0, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSingleUploadIntent(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 36
    const-string v0, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseMultipleUploadIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/uploader/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    :goto_e
    return-object v0

    .line 65
    :cond_f
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    if-nez v0, :cond_20

    .line 68
    const-string v0, "MediaUploader"

    const-string v1, "Multiple upload intent missing files URI list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    goto :goto_e

    .line 72
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseUploadInfo(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2d

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_43
    move-object v0, v1

    .line 80
    goto :goto_e
.end method

.method public parseSingleUploadIntent(Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;
    .registers 4
    .parameter

    .prologue
    .line 47
    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/UploadInfo;

    move-object v0, p0

    .line 57
    :goto_11
    return-object v0

    .line 51
    :cond_12
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 52
    if-nez v0, :cond_25

    .line 53
    const-string v0, "MediaUploader"

    const-string v1, "Single upload intent missing file URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    goto :goto_11

    .line 57
    :cond_25
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseUploadInfo(Landroid/net/Uri;Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    goto :goto_11
.end method
