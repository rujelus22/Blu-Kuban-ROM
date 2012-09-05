.class Lcom/google/android/finsky/activities/MyDownloadsFragment$8;
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

.field final synthetic val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

.field final synthetic val$toc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    iput-object p3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$600(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->val$appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    .line 640
    return-void
.end method
