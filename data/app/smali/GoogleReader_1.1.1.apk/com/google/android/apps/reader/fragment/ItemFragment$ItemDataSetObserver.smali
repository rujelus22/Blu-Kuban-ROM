.class Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/fragment/ItemFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/fragment/ItemFragment;Lcom/google/android/apps/reader/fragment/ItemFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;-><init>(Lcom/google/android/apps/reader/fragment/ItemFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->markReadIfNotMarkedRead()V

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateViews()V

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeQueryIfItemNotFound()V

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ItemFragment$ItemDataSetObserver;->this$0:Lcom/google/android/apps/reader/fragment/ItemFragment;

    #calls: Lcom/google/android/apps/reader/fragment/ItemFragment;->loadMoreIfNearEnd()V
    invoke-static {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->access$100(Lcom/google/android/apps/reader/fragment/ItemFragment;)V

    .line 611
    return-void
.end method
