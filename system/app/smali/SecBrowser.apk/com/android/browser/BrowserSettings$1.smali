.class Lcom/android/browser/BrowserSettings$1;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserSettings;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const v8, 0x7f0c013b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 232
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    #setter for: Lcom/android/browser/BrowserSettings;->mFontSizeMult:F
    invoke-static {v1, v0}, Lcom/android/browser/BrowserSettings;->access$102(Lcom/android/browser/BrowserSettings;F)F

    .line 237
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2c

    .line 238
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    const/4 v1, 0x5

    #setter for: Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I
    invoke-static {v0, v1}, Lcom/android/browser/BrowserSettings;->access$202(Lcom/android/browser/BrowserSettings;I)I

    .line 240
    :cond_2c
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    new-instance v1, Lcom/android/browser/WebStorageSizeManager;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v4, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #calls: Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v5, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #calls: Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    #setter for: Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserSettings;->access$302(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;

    .line 244
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 246
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 247
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 249
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0, v7}, Lcom/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 251
    :cond_73
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "text_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 260
    sget-object v0, Lcom/android/browser/BrowserSettings$2;->$SwitchMap$android$webkit$WebSettings$TextSize:[I

    iget-object v1, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #calls: Lcom/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$600(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings$TextSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_17e

    .line 274
    :goto_92
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    :cond_a5
    :try_start_a5
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a5 .. :try_end_b3} :catch_17a

    .line 281
    :goto_b3
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v0, v0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v0, v0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_12b

    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v0, v0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 282
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    iget-object v0, v0, Lcom/android/browser/BrowserSettings;->cscHome:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    :cond_d2
    :goto_d2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_fa

    .line 298
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{CID}"

    iget-object v2, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    :cond_fa
    const-class v1, Lcom/android/browser/BrowserSettings;

    monitor-enter v1

    .line 303
    const/4 v0, 0x1

    :try_start_fe
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$802(Z)Z

    .line 304
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 305
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_177

    .line 306
    return-void

    .line 262
    :pswitch_108
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTextZoom(I)V

    goto :goto_92

    .line 265
    :pswitch_110
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTextZoom(I)V

    goto/16 :goto_92

    .line 268
    :pswitch_119
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTextZoom(I)V

    goto/16 :goto_92

    .line 271
    :pswitch_122
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTextZoom(I)V

    goto/16 :goto_92

    .line 284
    :cond_12b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-ne v0, v6, :cond_147

    .line 285
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$702(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d2

    .line 288
    :cond_147
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "homepage"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_d2

    .line 291
    iget-object v0, p0, Lcom/android/browser/BrowserSettings$1;->this$0:Lcom/android/browser/BrowserSettings;

    #getter for: Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->access$702(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_d2

    .line 305
    :catchall_177
    move-exception v0

    :try_start_178
    monitor-exit v1
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw v0

    .line 279
    :catch_17a
    move-exception v0

    goto/16 :goto_b3

    .line 260
    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_108
        :pswitch_110
        :pswitch_119
        :pswitch_122
    .end packed-switch
.end method
