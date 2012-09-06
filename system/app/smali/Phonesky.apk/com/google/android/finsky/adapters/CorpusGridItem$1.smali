.class Lcom/google/android/finsky/adapters/CorpusGridItem$1;
.super Ljava/lang/Object;
.source "CorpusGridItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/CorpusGridItem;->bindCorpusTile(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/CorpusGridItem;

.field final synthetic val$backendId:I

.field final synthetic val$landingUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/CorpusGridItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->this$0:Lcom/google/android/finsky/adapters/CorpusGridItem;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$landingUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$backendId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->this$0:Lcom/google/android/finsky/adapters/CorpusGridItem;

    #getter for: Lcom/google/android/finsky/adapters/CorpusGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/CorpusGridItem;->access$200(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$landingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$title:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->val$backendId:I

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->this$0:Lcom/google/android/finsky/adapters/CorpusGridItem;

    #getter for: Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v4}, Lcom/google/android/finsky/adapters/CorpusGridItem;->access$000(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CorpusGridItem$1;->this$0:Lcom/google/android/finsky/adapters/CorpusGridItem;

    #getter for: Lcom/google/android/finsky/adapters/CorpusGridItem;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/finsky/adapters/CorpusGridItem;->access$100(Lcom/google/android/finsky/adapters/CorpusGridItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 138
    return-void
.end method
