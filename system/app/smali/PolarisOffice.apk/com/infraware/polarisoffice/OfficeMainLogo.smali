.class public Lcom/infraware/polarisoffice/OfficeMainLogo;
.super Landroid/app/Activity;
.source "OfficeMainLogo.java"


# instance fields
.field private m_lvInfrawareLand:Landroid/widget/ImageView;

.field private m_lvInfrawarePort:Landroid/widget/ImageView;

.field private m_lvLogoLand:Landroid/widget/ImageView;

.field private m_lvLogoPort:Landroid/widget/ImageView;

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_nShowTime:I

.field private m_oSetting:Lcom/infraware/common/config/RuntimeConfig;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    .line 23
    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nLocaleCode:I

    .line 25
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nShowTime:I

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoLand:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoPort:Landroid/widget/ImageView;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawareLand:Landroid/widget/ImageView;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawarePort:Landroid/widget/ImageView;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/OfficeMainLogo;)I
    .registers 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nShowTime:I

    return v0
.end method

.method private setPivotLock(Z)V
    .registers 3
    .parameter "bLock"

    .prologue
    .line 160
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onChangeScreen(I)V
    .registers 5
    .parameter "nType"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x2

    if-ne p1, v0, :cond_22

    .line 140
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawarePort:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawareLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_1a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 155
    return-void

    .line 148
    :cond_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawarePort:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawareLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 112
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_f

    .line 114
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    .line 115
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->onChangeScreen(I)V

    .line 118
    :cond_f
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 119
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nLocaleCode:I

    if-eq v1, v0, :cond_1b

    .line 120
    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nLocaleCode:I

    .line 122
    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/16 v2, 0x8

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isHideTitleBarOnSplashActivity()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->requestWindowFeature(I)Z

    .line 40
    :cond_f
    const v1, 0x7f03003b

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->setContentView(I)V

    .line 42
    const v1, 0x7f0c0188

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoLand:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    const v1, 0x7f0c0186

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoPort:Landroid/widget/ImageView;

    .line 46
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvLogoPort:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const v1, 0x7f0c0189

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawareLand:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawareLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    const v1, 0x7f0c0187

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawarePort:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_lvInfrawarePort:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    .line 56
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nLocaleCode:I

    .line 57
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    .line 59
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->onPivotLock()V

    .line 60
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_84

    .line 62
    const-string v1, "key_show_time"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nShowTime:I

    .line 63
    :cond_84
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    return-void
.end method

.method public onPivotLock()V
    .registers 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v0

    .line 129
    .local v0, bLock:Z
    if-eqz v0, :cond_10

    .line 130
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    .line 132
    :cond_10
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeMainLogo;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainLogo;->onChangeScreen(I)V

    .line 133
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeMainLogo;->setPivotLock(Z)V

    .line 134
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/polarisoffice/OfficeMainLogo$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/OfficeMainLogo$1;-><init>(Lcom/infraware/polarisoffice/OfficeMainLogo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method
