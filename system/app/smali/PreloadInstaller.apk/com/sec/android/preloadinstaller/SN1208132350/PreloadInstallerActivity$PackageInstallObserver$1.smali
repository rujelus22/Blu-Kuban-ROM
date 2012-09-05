.class Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;
.super Ljava/lang/Object;
.source "PreloadInstallerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

.field final synthetic val$idx:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iput p2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$idx:I

    iput-object p3, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-virtual {v1}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    .local v0, fadeIn:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    iget v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$idx:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v2, v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-virtual {v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v3, v3, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-virtual {v3}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    iget v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$idx:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    .line 151
    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v1, v1, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    iget v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;->val$idx:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 153
    .end local v0           #fadeIn:Landroid/view/animation/Animation;
    :goto_5e
    return-void

    .line 152
    :catch_5f
    move-exception v1

    goto :goto_5e
.end method
