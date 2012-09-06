.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
.super Lcom/android/email/AttachmentInfo;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageViewAttachmentInfo"
.end annotation


# static fields
.field private static final sSavedFileInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/email/AttachmentInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private infoButton:Landroid/widget/Button;

.field private loadButton:Landroid/widget/Button;

.field private loaded:Z

.field private final mProgressView:Landroid/widget/ProgressBar;

.field private openButton:Landroid/widget/Button;

.field private saveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1263
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter "context"
    .parameter "oldInfo"

    .prologue
    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V

    .line 1281
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    .line 1282
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    .line 1283
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    .line 1284
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    .line 1285
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    .line 1286
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 1287
    iget-object v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1288
    iget-boolean v0, p2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 1289
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1255
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "context"
    .parameter "attachment"
    .parameter "progressView"

    .prologue
    .line 1271
    invoke-direct {p0, p1, p2}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1272
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    .line 1273
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1255
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method private getSavedPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1358
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private setSavedPath(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 1344
    if-nez p1, :cond_8

    .line 1345
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    :goto_7
    return-void

    .line 1347
    :cond_8
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->sSavedFileInfos:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method


# virtual methods
.method protected getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_21
    return-object v1

    :cond_22
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/AttachmentInfo;->getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_21
.end method

.method public hideProgress()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1293
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 1294
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1296
    :cond_e
    return-void
.end method

.method public isFileSaved()Z
    .registers 4

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getSavedPath()Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1333
    const/4 v1, 0x0

    .line 1340
    :cond_7
    :goto_7
    return v1

    .line 1335
    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1336
    .local v1, savedFileExists:Z
    if-nez v1, :cond_7

    .line 1338
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public showProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1300
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1302
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1303
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1305
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1308
    const/16 v0, 0x64

    if-ne p1, v0, :cond_27

    .line 1309
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1311
    :cond_27
    return-void
.end method

.method public showProgressIndeterminate()V
    .registers 3

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1315
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1317
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1318
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1320
    :cond_1c
    return-void
.end method
