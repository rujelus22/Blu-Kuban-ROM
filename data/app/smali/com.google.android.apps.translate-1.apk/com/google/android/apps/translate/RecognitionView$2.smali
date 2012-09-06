.class Lcom/google/android/apps/translate/RecognitionView$2;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->restoreState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/RecognitionView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/RecognitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$2;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$2;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mState:I
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$000(Lcom/google/android/apps/translate/RecognitionView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$2;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$100(Lcom/google/android/apps/translate/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$2;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$100(Lcom/google/android/apps/translate/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 131
    :cond_21
    return-void
.end method
