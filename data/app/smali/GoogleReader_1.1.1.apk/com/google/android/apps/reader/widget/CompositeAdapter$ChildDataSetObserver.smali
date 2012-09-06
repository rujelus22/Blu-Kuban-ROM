.class Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CompositeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/CompositeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildDataSetObserver"
.end annotation


# instance fields
.field private final mIndex:I

.field final synthetic this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/widget/CompositeAdapter;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 234
    iput p2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->mIndex:I

    .line 235
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    #getter for: Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->access$000(Lcom/google/android/apps/reader/widget/CompositeAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->mIndex:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    #calls: Lcom/google/android/apps/reader/widget/CompositeAdapter;->isDataValid()Z
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->access$100(Lcom/google/android/apps/reader/widget/CompositeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_18
    return-void
.end method

.method public onInvalidated()V
    .registers 5

    .prologue
    .line 250
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    #calls: Lcom/google/android/apps/reader/widget/CompositeAdapter;->isDataValid()Z
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->access$100(Lcom/google/android/apps/reader/widget/CompositeAdapter;)Z

    move-result v0

    .line 252
    .local v0, notify:Z
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    #getter for: Lcom/google/android/apps/reader/widget/CompositeAdapter;->mDataValid:[Z
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->access$000(Lcom/google/android/apps/reader/widget/CompositeAdapter;)[Z

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->mIndex:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 253
    if-eqz v0, :cond_20

    .line 254
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    #getter for: Lcom/google/android/apps/reader/widget/CompositeAdapter;->mAlwaysValid:Z
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->access$200(Lcom/google/android/apps/reader/widget/CompositeAdapter;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->notifyDataSetChanged()V

    .line 262
    :cond_20
    :goto_20
    return-void

    .line 259
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/CompositeAdapter$ChildDataSetObserver;->this$0:Lcom/google/android/apps/reader/widget/CompositeAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/CompositeAdapter;->notifyDataSetInvalidated()V

    goto :goto_20
.end method
