.class public Lcom/sprint/w/installer/dev/DeveloperLanding;
.super Landroid/app/Activity;
.source "DeveloperLanding.java"


# static fields
.field private static final DEV_DIR_NAME:Ljava/lang/String; = null

.field private static final DEV_DIR_NAME_SHORT:Ljava/lang/String; = "SprintID"

.field private static final DIALOG_SD_ERROR:I = 0x191

.field private static final DIALOG_SELECT_FILE:I = 0x190

.field public static final EXTRA_FILE:Ljava/lang/String; = "file"

.field static final SPK_FILTER:Ljava/io/FilenameFilter; = null

.field private static final sAdpUrl:Ljava/lang/String; = "http://developer.sprint.com/site/sprintid/clientnews.html"


# instance fields
.field private clickLoadSD:Landroid/view/View$OnClickListener;

.field private clickLoadURL:Landroid/view/View$OnClickListener;

.field mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

.field mDialogErrorMessage:Ljava/lang/String;

.field mIDHomeDir:Ljava/io/File;

.field mPacksOnSd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SprintID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->DEV_DIR_NAME:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperLanding$1;

    invoke-direct {v0}, Lcom/sprint/w/installer/dev/DeveloperLanding$1;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->SPK_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperLanding$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/dev/DeveloperLanding$2;-><init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->clickLoadSD:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/sprint/w/installer/dev/DeveloperLanding$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/dev/DeveloperLanding$3;-><init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->clickLoadURL:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/dev/DeveloperLanding;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->buildFileList()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperLanding;->DEV_DIR_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/dev/DeveloperLanding;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/dev/DeveloperLanding;->installPack(Ljava/lang/String;)V

    return-void
.end method

.method private buildFileList()V
    .registers 4

    .prologue
    .line 111
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sprint/w/installer/dev/DeveloperLanding;->DEV_DIR_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mIDHomeDir:Ljava/io/File;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, listPacks:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mIDHomeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 114
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mIDHomeDir:Ljava/io/File;

    sget-object v2, Lcom/sprint/w/installer/dev/DeveloperLanding;->SPK_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_1a
    iput-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    .line 117
    return-void
.end method

.method private installPack(Ljava/lang/String;)V
    .registers 7
    .parameter "fName"

    .prologue
    .line 192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, f:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.ACTION_INSTALL_FROM_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    const-string v2, "packName"

    const v3, 0x7f06008a

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/dev/DeveloperLanding;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-class v2, Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/dev/DeveloperLanding;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method private setupUI(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, showWebView:Z
    new-instance v5, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v5, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    .line 63
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-virtual {v5}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isDeveloperModeEnabled()Z

    move-result v5

    if-nez v5, :cond_24

    .line 91
    :cond_13
    :goto_13
    const v5, 0x7f0c0020

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/dev/DeveloperLanding;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 92
    .local v4, wv:Landroid/webkit/WebView;
    if-eqz v3, :cond_8d

    .line 93
    const-string v5, "http://developer.sprint.com/site/sprintid/clientnews.html"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    :goto_23
    return-void

    .line 64
    .end local v4           #wv:Landroid/webkit/WebView;
    :cond_24
    const v5, 0x7f0c001c

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/dev/DeveloperLanding;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    const/4 v3, 0x1

    .line 67
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-virtual {v5}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadURL()Z

    move-result v5

    if-nez v5, :cond_69

    .line 72
    :goto_39
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-virtual {v5}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadSD()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 78
    :goto_41
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDevPermissions:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-virtual {v5}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadCable()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 79
    const-string v5, "file"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, packFileName:Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sprint/w/installer/dev/DeveloperLanding;->DEV_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/w/installer/dev/DeveloperLanding;->installPack(Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    goto :goto_13

    .line 68
    .end local v2           #packFileName:Ljava/lang/String;
    :cond_69
    const v5, 0x7f0c001e

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/dev/DeveloperLanding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 69
    .local v1, loadURL:Landroid/widget/Button;
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->clickLoadURL:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_39

    .line 73
    .end local v1           #loadURL:Landroid/widget/Button;
    :cond_7b
    const v5, 0x7f0c001d

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/dev/DeveloperLanding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, loadSD:Landroid/widget/Button;
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->clickLoadSD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_41

    .line 95
    .end local v0           #loadSD:Landroid/widget/Button;
    .restart local v4       #wv:Landroid/webkit/WebView;
    :cond_8d
    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_23
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->setContentView(I)V

    .line 42
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/dev/DeveloperLanding;->setupUI(Landroid/content/Intent;)V

    .line 46
    if-eqz p1, :cond_31

    .line 47
    const-string v0, "packsOnSd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    .line 48
    const-string v0, "dialogErrorMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    .line 50
    :cond_31
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 157
    packed-switch p1, :pswitch_data_4c

    .line 171
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 159
    :pswitch_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Lcom/sprint/w/installer/dev/DeveloperLanding$4;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/dev/DeveloperLanding$4;-><init>(Lcom/sprint/w/installer/dev/DeveloperLanding;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, d:Landroid/app/AlertDialog;
    goto :goto_8

    .line 168
    .end local v0           #d:Landroid/app/AlertDialog;
    :pswitch_2c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, d2:Landroid/app/AlertDialog;
    move-object v0, v1

    .line 169
    goto :goto_8

    .line 157
    nop

    :pswitch_data_4c
    .packed-switch 0x190
        :pswitch_9
        :pswitch_2c
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/dev/DeveloperLanding;->setupUI(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_24

    .line 186
    invoke-static {p0, p1, p2}, Lcom/sprint/w/installer/DialogFactory;->prepareDialog(Landroid/content/Context;ILandroid/app/Dialog;)V

    .line 189
    .end local p2
    :goto_6
    return-void

    .restart local p2
    :pswitch_7
    move-object v0, p2

    .line 179
    check-cast v0, Landroid/app/AlertDialog;

    .line 180
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_6

    .line 183
    .end local v0           #d:Landroid/app/AlertDialog;
    :pswitch_1c
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 177
    :pswitch_data_24
    .packed-switch 0x190
        :pswitch_7
        :pswitch_1c
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 201
    const-string v0, "packsOnSd"

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mPacksOnSd:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    const-string v0, "dialogErrorMessage"

    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperLanding;->mDialogErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
