.class Lcom/android/inputmethod/voice/RecognitionView$1;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/RecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 83
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$000(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/RecognitionView$State;

    move-result-object v5

    sget-object v6, Lcom/android/inputmethod/voice/RecognitionView$State;->LISTENING:Lcom/android/inputmethod/voice/RecognitionView$State;

    if-eq v5, v6, :cond_b

    .line 99
    :goto_a
    return-void

    .line 87
    :cond_b
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mMinMicrophoneLevel:F
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$100(Lcom/android/inputmethod/voice/RecognitionView;)F

    move-result v4

    .line 88
    .local v4, min:F
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mMaxMicrophoneLevel:F
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$200(Lcom/android/inputmethod/voice/RecognitionView;)F

    move-result v2

    .line 89
    .local v2, max:F
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$300(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 91
    .local v3, maxLevel:I
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$400(Lcom/android/inputmethod/voice/RecognitionView;)F

    move-result v5

    sub-float/2addr v5, v4

    sub-float v6, v2, v4

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 92
    .local v0, index:I
    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    .local v1, level:I
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$500(Lcom/android/inputmethod/voice/RecognitionView;)I

    move-result v5

    if-eq v1, v5, :cond_5b

    .line 95
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$600(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$300(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #setter for: Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I
    invoke-static {v5, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$502(Lcom/android/inputmethod/voice/RecognitionView;I)I

    .line 98
    :cond_5b
    iget-object v5, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/inputmethod/voice/RecognitionView;->access$800(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/voice/RecognitionView$1;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/inputmethod/voice/RecognitionView;->access$700(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method
