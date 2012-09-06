.class Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;
.super Ljava/lang/Object;
.source "InstantTranslateTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->onTargetTextUpdate(Landroid/text/SpannableStringBuilder;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

.field final synthetic val$allSelected:Z

.field final synthetic val$end:I

.field final synthetic val$length:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;ZIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iput-boolean p2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$allSelected:Z

    iput p3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$start:I

    iput p4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$end:I

    iput p5, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v2, 0xa

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setBaseScrollX()V
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$200(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$allSelected:Z

    if-eqz v0, :cond_29

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    move-result-object v0

    if-nez v0, :cond_14

    .line 320
    :cond_13
    :goto_13
    return-void

    .line 311
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$300(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtStart()I
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$400(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I

    move-result v1

    const v2, 0x3e4ccccd

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->startScroll(IFI)V

    goto :goto_13

    .line 315
    :cond_29
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$start:I

    if-ltz v0, :cond_43

    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$start:I

    if-ge v0, v2, :cond_43

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtEnd()I
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$500(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$600(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I

    move-result v2

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollToByUpToGivenDistance(II)Z
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;II)Z

    goto :goto_13

    .line 317
    :cond_43
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$end:I

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$length:I

    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->val$end:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_13

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtStart()I
    invoke-static {v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$400(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;->this$0:Lcom/google/android/apps/translate/editor/InstantTranslateTextView;

    #getter for: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$600(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I

    move-result v2

    #calls: Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollToByUpToGivenDistance(II)Z
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->access$100(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;II)Z

    goto :goto_13
.end method
