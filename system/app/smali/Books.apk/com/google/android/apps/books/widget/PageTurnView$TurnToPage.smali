.class Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnToPage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public run()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1870
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1900(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/render/RenderPosition;

    .line 1872
    .local v1, lastVisiblePage:Lcom/google/android/apps/books/render/RenderPosition;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1873
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1900(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 1879
    .local v0, firstVisiblePage:Lcom/google/android/apps/books/render/RenderPosition;
    :goto_2e
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3400(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/apps/books/render/RenderPosition;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_81

    .line 1881
    const/4 v3, -0x1

    .line 1889
    .local v3, turnDirection:I
    :goto_3b
    if-eqz v3, :cond_91

    .line 1891
    const-string v4, "PageTurnView"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1892
    const-string v4, "PageTurnView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->nameForDirection(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4700(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " turn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_6c
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V
    invoke-static {v4, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4300(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    .line 1900
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V
    invoke-static {v4, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4600(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    .line 1904
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    .end local v2           #tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;>;"
    :goto_7e
    return-object v2

    .line 1875
    .end local v0           #firstVisiblePage:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v3           #turnDirection:I
    :cond_7f
    move-object v0, v1

    .restart local v0       #firstVisiblePage:Lcom/google/android/apps/books/render/RenderPosition;
    goto :goto_2e

    .line 1882
    :cond_81
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3400(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/apps/books/render/RenderPosition;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_8f

    .line 1884
    const/4 v3, 0x1

    .restart local v3       #turnDirection:I
    goto :goto_3b

    .line 1887
    .end local v3           #turnDirection:I
    :cond_8f
    const/4 v3, 0x0

    .restart local v3       #turnDirection:I
    goto :goto_3b

    .line 1908
    :cond_91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_7e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1914
    const-string v0, "[TurnToPage]"

    return-object v0
.end method
