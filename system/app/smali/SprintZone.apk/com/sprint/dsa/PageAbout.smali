.class public Lcom/sprint/dsa/PageAbout;
.super Landroid/app/Activity;
.source "PageAbout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_PageAbout"


# instance fields
.field private mResources:Lcom/sprint/dsa/res/SzResources;

.field private m_metrics:Landroid/util/DisplayMetrics;

.field private m_tapStage:I

.field private m_version:Lcom/sprint/dsa/data/ContentVersion;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    .line 23
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sprint/dsa/PageAbout;->mResources:Lcom/sprint/dsa/res/SzResources;

    if-nez v0, :cond_f

    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageAbout;->mResources:Lcom/sprint/dsa/res/SzResources;

    .line 163
    :cond_f
    iget-object v0, p0, Lcom/sprint/dsa/PageAbout;->mResources:Lcom/sprint/dsa/res/SzResources;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x3

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    :try_start_4
    new-instance v1, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, dbHelper:Lcom/sprint/dsa/data/DbAdapter;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 41
    :cond_12
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->getVersions()Lcom/sprint/dsa/data/ContentVersion;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/dsa/PageAbout;->m_version:Lcom/sprint/dsa/data/ContentVersion;

    .line 42
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_1b} :catch_ae

    .line 47
    .end local v1           #dbHelper:Lcom/sprint/dsa/data/DbAdapter;
    :goto_1b
    invoke-virtual {p0, v8}, Lcom/sprint/dsa/PageAbout;->requestWindowFeature(I)Z

    .line 49
    const v7, 0x7f030010

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/PageAbout;->setContentView(I)V

    .line 51
    const v7, 0x7f020014

    invoke-virtual {p0, v8, v7}, Lcom/sprint/dsa/PageAbout;->setFeatureDrawableResource(II)V

    .line 53
    invoke-static {p0}, Lcom/sprint/dsa/Prefs;->getVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, ver:Ljava/lang/String;
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/PageAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, appVer:Landroid/widget/TextView;
    const v7, 0x7f0b0044

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/PageAbout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, lastUpdate:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, version:Ljava/lang/String;
    sget-boolean v7, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v7, :cond_66

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " (Emulator)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 66
    :cond_66
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v3, Ljava/util/Date;

    iget-object v7, p0, Lcom/sprint/dsa/PageAbout;->m_version:Lcom/sprint/dsa/data/ContentVersion;

    iget-wide v7, v7, Lcom/sprint/dsa/data/ContentVersion;->m_lastUpdate:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 69
    .local v3, lup:Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Synced on: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sprint/dsa/Util;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    .line 72
    invoke-virtual {p0}, Lcom/sprint/dsa/PageAbout;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    const v7, 0x7f0b0042

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/PageAbout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 82
    .local v4, upgradeButton:Landroid/widget/Button;
    new-instance v7, Lcom/sprint/dsa/PageAbout$1;

    invoke-direct {v7, p0}, Lcom/sprint/dsa/PageAbout$1;-><init>(Lcom/sprint/dsa/PageAbout;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 43
    .end local v0           #appVer:Landroid/widget/TextView;
    .end local v2           #lastUpdate:Landroid/widget/TextView;
    .end local v3           #lup:Ljava/util/Date;
    .end local v4           #upgradeButton:Landroid/widget/Button;
    .end local v5           #ver:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catch_ae
    move-exception v7

    goto/16 :goto_1b
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x42b4

    const/4 v7, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_a

    .line 153
    :cond_9
    :goto_9
    return v7

    .line 119
    :cond_a
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    if-nez v5, :cond_9f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_9f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9f

    .line 120
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    .line 131
    :goto_2b
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    .line 132
    new-instance v4, Lcom/sprint/dsa/Prefs;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 133
    .local v4, prefs:Lcom/sprint/dsa/Prefs;
    invoke-virtual {v4, p0}, Lcom/sprint/dsa/Prefs;->getNai(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, nai:Ljava/lang/String;
    const v5, 0x7f0b0045

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/PageAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, infoTxt:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    sget-boolean v5, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v5, :cond_fe

    .line 140
    sget-object v2, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 141
    .local v2, model:Ljava/lang/String;
    sget-object v1, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    .line 147
    .local v1, make:Ljava/lang/String;
    :goto_4d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Nai: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nMake: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nModel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 148
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 149
    const-string v6, "\nAlert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_version:Lcom/sprint/dsa/data/ContentVersion;

    iget-object v6, v6, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nPromo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_version:Lcom/sprint/dsa/data/ContentVersion;

    iget-object v6, v6, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 150
    const-string v6, "\nSetting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_version:Lcom/sprint/dsa/data/ContentVersion;

    iget-object v6, v6, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 121
    .end local v0           #infoTxt:Landroid/widget/TextView;
    .end local v1           #make:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    .end local v3           #nai:Ljava/lang/String;
    .end local v4           #prefs:Lcom/sprint/dsa/Prefs;
    :cond_9f
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_d4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d4

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d4

    .line 123
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    goto/16 :goto_2b

    .line 124
    :cond_d4
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_fa

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_fa

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/sprint/dsa/PageAbout;->m_metrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_fa

    .line 126
    iget v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    goto/16 :goto_2b

    .line 128
    :cond_fa
    iput v7, p0, Lcom/sprint/dsa/PageAbout;->m_tapStage:I

    goto/16 :goto_2b

    .line 143
    .restart local v0       #infoTxt:Landroid/widget/TextView;
    .restart local v3       #nai:Ljava/lang/String;
    .restart local v4       #prefs:Lcom/sprint/dsa/Prefs;
    :cond_fe
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 144
    .restart local v2       #model:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .restart local v1       #make:Ljava/lang/String;
    goto/16 :goto_4d
.end method
