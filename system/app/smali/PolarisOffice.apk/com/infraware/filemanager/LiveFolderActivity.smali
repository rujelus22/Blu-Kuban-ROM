.class public Lcom/infraware/filemanager/LiveFolderActivity;
.super Landroid/app/Activity;
.source "LiveFolderActivity.java"


# static fields
.field private static final AUTHROTY:Ljava/lang/String; = "com.infraware.polarisoffice"

.field private static final RECENT_FILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "content://com.infraware.polarisoffice/recent_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/LiveFolderActivity;->RECENT_FILE_CONTENT_URI:Landroid/net/Uri;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7
    .parameter "aCtx"
    .parameter "aUri"
    .parameter "aName"
    .parameter "aIcon"

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    const-string v1, "android.intent.extra.livefolder.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "android.intent.extra.livefolder.ICON"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/infraware/filemanager/LiveFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 22
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 25
    const v3, 0x7f08007e

    .line 26
    .local v3, stringId:I
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 27
    const v3, 0x7f08007d

    .line 29
    :cond_1f
    invoke-virtual {p0}, Lcom/infraware/filemanager/LiveFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, liveFolderIconName:Ljava/lang/String;
    const/4 v4, -0x1

    sget-object v5, Lcom/infraware/filemanager/LiveFolderActivity;->RECENT_FILE_CONTENT_URI:Landroid/net/Uri;

    const v6, 0x7f02025b

    invoke-static {p0, v5, v2, v6}, Lcom/infraware/filemanager/LiveFolderActivity;->createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/infraware/filemanager/LiveFolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 32
    .end local v2           #liveFolderIconName:Ljava/lang/String;
    .end local v3           #stringId:I
    :cond_34
    invoke-virtual {p0}, Lcom/infraware/filemanager/LiveFolderActivity;->finish()V

    .line 33
    return-void
.end method
