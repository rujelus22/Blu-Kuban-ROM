.class Lcom/google/android/finsky/activities/MyDownloadsFragment$9;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->configureNoAppsUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

.field final synthetic val$gamesUrl:Ljava/lang/String;

.field final synthetic val$toc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->val$gamesUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$800(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->val$gamesUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$700(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    .line 656
    return-void
.end method
