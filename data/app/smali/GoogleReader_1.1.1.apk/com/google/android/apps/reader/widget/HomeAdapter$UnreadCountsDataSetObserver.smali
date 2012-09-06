.class Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/HomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnreadCountsDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/widget/HomeAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/widget/HomeAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/widget/HomeAdapter;Lcom/google/android/apps/reader/widget/HomeAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;-><init>(Lcom/google/android/apps/reader/widget/HomeAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/HomeAdapter;

    #getter for: Lcom/google/android/apps/reader/widget/HomeAdapter;->mDataValid:Z
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->access$100(Lcom/google/android/apps/reader/widget/HomeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 577
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/HomeAdapter$UnreadCountsDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/HomeAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/HomeAdapter;->notifyDataSetChanged()V

    .line 582
    :cond_d
    return-void
.end method
