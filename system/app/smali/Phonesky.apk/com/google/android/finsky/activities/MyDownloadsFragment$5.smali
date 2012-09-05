.class Lcom/google/android/finsky/activities/MyDownloadsFragment$5;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$5;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$5;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #getter for: Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$000(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 411
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$5;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->syncCurrentAsset()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$200(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 412
    return-void
.end method
