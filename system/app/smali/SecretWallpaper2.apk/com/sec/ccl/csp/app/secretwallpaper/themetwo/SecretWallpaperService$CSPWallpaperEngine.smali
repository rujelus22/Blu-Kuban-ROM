.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;
.super Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CSPWallpaperEngine"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIsFirstRunPreviewThread:Z

.field mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1786
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    .line 1787
    invoke-direct {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;)V

    .line 1784
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mIsFirstRunPreviewThread:Z

    .line 1788
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct {v0, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    .line 1789
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->setRenderer(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;)V

    .line 1790
    invoke-virtual {p0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->setRenderMode(I)V

    .line 1791
    iput-object p2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    .line 1792
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "surfaceHolder"

    .prologue
    .line 1796
    const-string v0, "SecretWallpaper"

    const-string v1, "Engine create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-super {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->setTouchEventsEnabled(Z)V

    .line 1800
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1801
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->startCurrentLocationWeatherDataService()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    .line 1804
    :cond_19
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1808
    const-string v0, "SecretWallpaper"

    const-string v1, "Engine destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1810
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->stopCurrentLocationWeatherDataService()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    .line 1813
    :cond_12
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    if-eqz v0, :cond_1b

    .line 1814
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->release()V

    .line 1816
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    .line 1817
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onDestroy()V

    .line 1818
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
    .line 1921
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1924
    .local v0, DAEnable:Z
    if-nez v0, :cond_16

    .line 1925
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x3f00

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;F)F

    .line 1934
    :goto_15
    return-void

    .line 1927
    :cond_16
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1928
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x4020

    mul-float/2addr v2, p1

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;F)F

    goto :goto_15

    .line 1930
    :cond_25
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    const/high16 v2, 0x3f80

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v1, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;F)F

    goto :goto_15
.end method

.method public onPause()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1822
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z
    invoke-static {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v4

    if-ne v4, v7, :cond_64

    .line 1823
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const/4 v5, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mUnlock:Z
    invoke-static {v4, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1825
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1827
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1828
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1829
    .local v2, iterator:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1830
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

    .line 1831
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperPreview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1832
    const-string v4, "SecretWallpaper"

    const-string v5, "Live picker Unlock Paused: skip"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_5c
    return-void

    .line 1835
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5d
    const-string v4, "SecretWallpaper"

    const-string v5, "Unlock & Not live picker"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_64
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    if-eqz v4, :cond_6d

    .line 1840
    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v4, v7}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setEnginePause(Z)V

    .line 1843
    :cond_6d
    const-string v4, "SecretWallpaper"

    const-string v5, "Engine pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onPause()V

    goto :goto_5c
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1850
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setEnginePause(Z)V

    .line 1851
    invoke-super {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onResume()V

    .line 1853
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->isPreview()Z

    move-result v2

    if-ne v2, v6, :cond_55

    .line 1854
    const-string v2, "SecretWallpaper"

    const-string v3, "onResume: PREVIEW !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    const/high16 v3, 0x3f80

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$1702(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;F)F

    .line 1858
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setIsPreview(Z)V

    .line 1859
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1860
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1802(I)I

    .line 1861
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1863
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D0_NOTHING:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevCond:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1902(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    .line 1864
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const-wide/16 v3, 0x0

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherStartTime:J
    invoke-static {v2, v3, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2002(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;J)J

    .line 1865
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->prevWeatherChangedDone:Z
    invoke-static {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2102(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1909
    :goto_4f
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setSceneDrawStatus(Z)V

    .line 1910
    return-void

    .line 1869
    :cond_55
    const-string v2, "SecretWallpaper"

    const-string v3, "onResume: LIVE !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->setIsPreview(Z)V

    .line 1871
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsPreview:Z
    invoke-static {v2, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2202(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1873
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v2

    if-ne v2, v6, :cond_10a

    .line 1874
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateWeatherInfo()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 1877
    :try_start_76
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_moon_phase_num_2"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2302(I)I

    .line 1878
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_weather_conditon_num_2"

    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1802(I)I

    .line 1880
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_sunrise_time_2"

    const/16 v5, 0x258

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunriseTime:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 1881
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_sunset_time_2"

    const/16 v5, 0x708

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnSunsetTime:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2602(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 1882
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2400()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_city_name_2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2702(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c8} :catch_fc

    .line 1893
    :cond_c8
    :goto_c8
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1895
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1898
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1901
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v3

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mOrientation:I
    invoke-static {v2, v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$2802(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 1904
    const-wide/16 v2, 0x19

    :try_start_f1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f4
    .catch Ljava/lang/InterruptedException; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_4f

    .line 1905
    :catch_f6
    move-exception v1

    .line 1906
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4f

    .line 1884
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_fc
    move-exception v1

    .line 1885
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1886
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->D1_CLEAR:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$WeatherConditions;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1802(I)I

    goto :goto_c8

    .line 1890
    .end local v1           #e:Ljava/lang/Exception;
    :cond_10a
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getPreviousWeather()V

    .line 1891
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v2, v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkUpdate(Z)Z

    goto :goto_c8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 1914
    invoke-super {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1915
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    if-eqz v0, :cond_c

    .line 1916
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPWallpaperEngine;->mRenderer:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1917
    :cond_c
    return-void
.end method
