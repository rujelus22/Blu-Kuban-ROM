.class Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;
.super Ljava/lang/Object;
.source "MultiSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    if-eqz v1, :cond_2e

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getFolder()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->regulatePath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->access$100(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, folderName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    const v2, 0x7f0200a4

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setFeatureDrawableResource(II)V

    .line 575
    :goto_23
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->instanceOfThis:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    .end local v0           #folderName:Ljava/lang/String;
    :cond_2e
    return-void

    .line 573
    .restart local v0       #folderName:Ljava/lang/String;
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_23
.end method
