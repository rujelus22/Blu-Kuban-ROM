.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;
.super Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CSPWallpaperEngine"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIsFirstRunPreviewThread:Z

.field mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1810
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    .line 1811
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;)V

    .line 1808
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mIsFirstRunPreviewThread:Z

    .line 1812
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-direct {v0, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    .line 1813
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->setRenderer(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;)V

    .line 1814
    invoke-virtual {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->setRenderMode(I)V

    .line 1815
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    .line 1816
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "surfaceHolder"

    .prologue
    .line 1820
    const-string v0, "SecretWallpaper"

    const-string v1, "Engine create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-super {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1822
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->setTouchEventsEnabled(Z)V

    .line 1824
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1825
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->startCurrentLocationWeatherDataService()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$900(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)V

    .line 1827
    :cond_19
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1831
    const-string v0, "SecretWallpaper"

    const-string v1, "Engine destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1833
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->stopCurrentLocationWeatherDataService()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1600(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)V

    .line 1836
    :cond_12
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    if-eqz v0, :cond_1b

    .line 1837
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->release()V

    .line 1839
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    .line 1840
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onDestroy()V

    .line 1841
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 10
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 1948
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1951
    .local v0, DAEnable:Z
    if-nez v0, :cond_16

    .line 1952
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x3f00

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;F)F

    .line 1960
    :goto_15
    return-void

    .line 1954
    :cond_16
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1955
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x4020

    mul-float/2addr v2, p1

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;F)F

    goto :goto_15

    .line 1957
    :cond_25
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x3fa0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;F)F

    goto :goto_15
.end method

.method public onPause()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1845
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mUnlock:Z
    invoke-static {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v4

    if-ne v4, v7, :cond_64

    .line 1846
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    const/4 v5, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mUnlock:Z
    invoke-static {v4, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 1848
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1850
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1851
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1852
    .local v2, iterator:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1853
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v4, "SecretWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TopActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperPreview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1855
    const-string v4, "SecretWallpaper"

    const-string v5, "Live picker Unlock Paused: skip"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_5c
    return-void

    .line 1858
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5d
    const-string v4, "SecretWallpaper"

    const-string v5, "Unlock & Not live picker"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_64
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    if-eqz v4, :cond_6d

    .line 1864
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v4, v7}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setEnginePause(Z)V

    .line 1867
    :cond_6d
    const-string v4, "SecretWallpaper"

    const-string v5, "Engine pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onPause()V

    goto :goto_5c
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1875
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setEnginePause(Z)V

    .line 1876
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onResume()V

    .line 1878
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v2

    if-ne v2, v6, :cond_55

    .line 1879
    const-string v2, "SecretWallpaper"

    const-string v3, "onResume: PREVIEW !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    const/high16 v3, 0x3fa0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;F)F

    .line 1883
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setIsPreview(Z)V

    .line 1884
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 1885
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1802(I)I

    .line 1886
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1888
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D0_NOTHING:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1902(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;)Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    .line 1889
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    const-wide/16 v3, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->prevWeatherStartTime:J
    invoke-static {v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2002(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;J)J

    .line 1890
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->prevWeatherChangedDone:Z
    invoke-static {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2102(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 1935
    :goto_4f
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 1936
    return-void

    .line 1894
    :cond_55
    const-string v2, "SecretWallpaper"

    const-string v3, "onResume: LIVE !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->setIsPreview(Z)V

    .line 1896
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2202(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 1898
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v2

    if-ne v2, v6, :cond_10a

    .line 1899
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->updateWeatherInfo()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 1902
    :try_start_76
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_moon_phase_num_1"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2302(I)I

    .line 1903
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_weather_conditon_num_1"

    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1802(I)I

    .line 1905
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_sunrise_time_1"

    const/16 v5, 0x258

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mnSunriseTime:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2502(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;I)I

    .line 1906
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_sunset_time_1"

    const/16 v5, 0x708

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mnSunsetTime:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2602(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;I)I

    .line 1907
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_city_name_1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2702(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c8} :catch_fc

    .line 1918
    :cond_c8
    :goto_c8
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;)Z

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;Z)Z

    .line 1920
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1923
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1927
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->mOrientation:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$2802(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;I)I

    .line 1930
    const-wide/16 v2, 0x19

    :try_start_f1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f4
    .catch Ljava/lang/InterruptedException; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_4f

    .line 1931
    :catch_f6
    move-exception v1

    .line 1932
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4f

    .line 1909
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_fc
    move-exception v1

    .line 1910
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1911
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->access$1802(I)I

    goto :goto_c8

    .line 1915
    .end local v1           #e:Ljava/lang/Exception;
    :cond_10a
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->getPreviousWeather()V

    .line 1916
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService;->checkUpdate(Z)Z

    goto :goto_c8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 1940
    invoke-super {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1941
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    if-eqz v0, :cond_c

    .line 1942
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperService$CSPRenderer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1943
    :cond_c
    return-void
.end method
