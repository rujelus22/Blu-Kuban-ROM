.class Lcom/google/android/apps/translate/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->showInitializing()V
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
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/RecognitionView;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/RecognitionView;->access$002(Lcom/google/android/apps/translate/RecognitionView;I)I

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/translate/RecognitionView;->access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$string;->voice_initializing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/apps/translate/RecognitionView;->access$300(Lcom/google/android/apps/translate/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/RecognitionView$3;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/apps/translate/RecognitionView;->access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$string;->cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translate/RecognitionView;->access$400(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
