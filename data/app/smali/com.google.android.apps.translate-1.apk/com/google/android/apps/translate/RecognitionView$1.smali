.class Lcom/google/android/apps/translate/RecognitionView$1;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->init(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
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
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$1;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$1;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mState:I
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$000(Lcom/google/android/apps/translate/RecognitionView;)I

    .line 116
    return-void
.end method
