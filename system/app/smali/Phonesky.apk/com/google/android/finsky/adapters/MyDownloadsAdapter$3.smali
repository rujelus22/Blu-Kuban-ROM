.class Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

.field final synthetic val$sectionAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;->val$sectionAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;->val$sectionAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->run(Landroid/content/Context;Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)V

    .line 619
    return-void
.end method
