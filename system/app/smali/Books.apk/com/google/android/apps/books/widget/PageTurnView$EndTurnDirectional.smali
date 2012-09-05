.class Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;
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
    name = "EndTurnDirectional"
.end annotation


# instance fields
.field private final mDirection:I

.field private final mSequenceNumber:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;II)V
    .registers 4
    .parameter
    .parameter "direction"
    .parameter "startSequenceNumber"

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    .line 1809
    iput p3, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mSequenceNumber:I

    .line 1810
    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 3

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mSequenceNumber:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public run()Ljava/util/List;
    .registers 4
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
    .line 1820
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1821
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending directional turn in direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mSequenceNumber:I

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mEndedTurnSequenceNumber:I
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4402(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1825
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;->mDirection:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4600(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    .line 1826
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
