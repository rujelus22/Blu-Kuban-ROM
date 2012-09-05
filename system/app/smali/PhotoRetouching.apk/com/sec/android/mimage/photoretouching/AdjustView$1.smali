.class Lcom/sec/android/mimage/photoretouching/AdjustView$1;
.super Ljava/lang/Object;
.source "AdjustView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/AdjustView;->initWidget(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/AdjustView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/AdjustView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/AdjustView$1;->this$0:Lcom/sec/android/mimage/photoretouching/AdjustView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView$1;->this$0:Lcom/sec/android/mimage/photoretouching/AdjustView;

    #getter for: Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->access$0(Lcom/sec/android/mimage/photoretouching/AdjustView;)Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->incrementProgressBy(I)V

    .line 55
    return-void
.end method
