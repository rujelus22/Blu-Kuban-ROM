.class Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;Lcom/sec/android/app/shareapp/ShareApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 872
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, actionStr:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 875
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 876
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #calls: Lcom/sec/android/app/shareapp/ShareApp;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v0, v6}, Lcom/sec/android/app/shareapp/ShareApp;->access$1800(Lcom/sec/android/app/shareapp/ShareApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .end local v2           #data:Landroid/net/Uri;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_21
    return-void

    .line 878
    :cond_22
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 880
    :cond_32
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, pkgList:[Ljava/lang/String;
    if-eqz v5, :cond_21

    array-length v7, v5

    if-eqz v7, :cond_21

    .line 885
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_40
    if-ge v3, v4, :cond_21

    aget-object v6, v1, v3

    .line 886
    .restart local v6       #pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    #calls: Lcom/sec/android/app/shareapp/ShareApp;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v6}, Lcom/sec/android/app/shareapp/ShareApp;->access$1800(Lcom/sec/android/app/shareapp/ShareApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v7, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    #calls: Lcom/sec/android/app/shareapp/ShareApp;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v6}, Lcom/sec/android/app/shareapp/ShareApp;->access$1800(Lcom/sec/android/app/shareapp/ShareApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_40
.end method

.method registerReceiver()V
    .registers 4

    .prologue
    .line 858
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 862
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-virtual {v2, p0, v0}, Lcom/sec/android/app/shareapp/ShareApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 865
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-virtual {v2, p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    return-void
.end method
