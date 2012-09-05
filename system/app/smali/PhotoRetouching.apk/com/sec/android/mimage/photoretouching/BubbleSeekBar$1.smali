.class Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;
.super Landroid/os/Handler;
.source "BubbleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_f8

    .line 166
    :goto_5
    return-void

    .line 125
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getProgress()I

    move-result v0

    .line 127
    .local v0, progress:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 129
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$1(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 130
    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressScale:F
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$2(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$3(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 129
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_d9

    .line 133
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$1(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit16 v3, v3, -0x82

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 138
    :goto_63
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$4(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_82

    .line 140
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$5(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mContentView:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$6(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;Landroid/view/View;)V

    .line 144
    :cond_82
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$7(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, txtView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$8(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$9(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$4(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/app/Dialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$7(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mWindow:Landroid/view/Window;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$10(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$1(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 152
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$4(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    .line 135
    .end local v1           #txtView:Landroid/widget/TextView;
    :cond_d9
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$1(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x5d

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_63

    .line 160
    .end local v0           #progress:I
    :sswitch_ed
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    #getter for: Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->access$4(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_5

    .line 121
    :sswitch_data_f8
    .sparse-switch
        0x0 -> :sswitch_6
        0x4 -> :sswitch_ed
    .end sparse-switch
.end method
