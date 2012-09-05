.class public Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "MasterTemplateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;,
        Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;
    }
.end annotation


# instance fields
.field private mTempPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    const v2, 0x7f0c0083

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 58
    .local v1, gv_port:Landroid/widget/GridView;
    const v2, 0x7f0c0084

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 59
    .local v0, gv_land:Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V

    .line 63
    :goto_25
    return-void

    .line 62
    :cond_26
    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V

    goto :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f0c0083

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 32
    .local v1, gv_port:Landroid/widget/GridView;
    const v2, 0x7f0c0084

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 33
    .local v0, gv_land:Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V

    .line 37
    :goto_2b
    return-void

    .line 36
    :cond_2c
    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V

    goto :goto_2b
.end method

.method public onLocaleChange(I)V
    .registers 2
    .parameter "nLocale"

    .prologue
    .line 187
    return-void
.end method

.method public settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V
    .registers 4
    .parameter "visibleView"
    .parameter "hideView"

    .prologue
    .line 40
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 44
    new-instance v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;

    invoke-direct {v0, p0, p0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$MasterThumbnailAdapter;-><init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    new-instance v0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method public startSlide(I)V
    .registers 7
    .parameter "imageNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    .line 67
    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 68
    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v2, v3, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    .line 70
    :cond_15
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 71
    const-string v2, "polarisTemp"

    invoke-static {v2, v4, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 72
    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v2, v3, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 73
    const-string v2, "/mnt/sdcard/"

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    .line 75
    :cond_31
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/infraware/common/util/FileUtils;->addPathDelemeter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->mTempPath:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Untitled0.ppt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    const-string v2, "INTCMD"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v2, "key_filename"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0, v4, v4}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->overridePendingTransition(II)V

    .line 85
    return-void
.end method
