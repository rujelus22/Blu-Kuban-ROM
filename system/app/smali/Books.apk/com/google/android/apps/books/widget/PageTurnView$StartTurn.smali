.class Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;
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
    name = "StartTurn"
.end annotation


# instance fields
.field final mDirection:I

.field final mFinishAutomatically:Z

.field final mSequenceNumber:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;IZ)V
    .registers 5
    .parameter
    .parameter "direction"
    .parameter "finishAutomatically"

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    .line 1622
    iput-boolean p3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mFinishAutomatically:Z

    .line 1623
    invoke-static {p1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4104(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mSequenceNumber:I

    .line 1624
    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

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
    .registers 6
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
    .line 1636
    const-string v1, "PageTurnView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1637
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting turn in direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mSequenceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_2f
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mSequenceNumber:I

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1641
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4300(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    .line 1643
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mFinishAutomatically:Z

    if-eqz v1, :cond_55

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;>;"
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mDirection:I

    iget v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;->mSequenceNumber:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    :goto_54
    return-object v0

    .line 1647
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;>;"
    :cond_55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .restart local v0       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;>;"
    goto :goto_54
.end method
