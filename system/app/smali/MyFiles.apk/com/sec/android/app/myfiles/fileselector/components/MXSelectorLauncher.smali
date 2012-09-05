.class public Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;
.super Ljava/lang/Object;
.source "MXSelectorLauncher.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, i:Landroid/content/Intent;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/provider/MxPreviewContentProvider;->getMyFilesImageUriFromFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_31
    return-void

    .line 80
    :cond_32
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v2, v4, v4}, Lcom/sec/android/app/myfiles/FileUtils;->openFile(Ljava/io/File;Landroid/app/Activity;ZI)V

    goto :goto_31
.end method
