.class Lcom/google/android/apps/translate/RecognitionView$5;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/RecognitionView;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$5;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iput-object p2, p0, Lcom/google/android/apps/translate/RecognitionView$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$5;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    const/4 v1, 0x3

    #setter for: Lcom/google/android/apps/translate/RecognitionView;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/RecognitionView;->access$002(Lcom/google/android/apps/translate/RecognitionView;I)I

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$5;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    iget-object v1, p0, Lcom/google/android/apps/translate/RecognitionView$5;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/translate/RecognitionView$5;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/apps/translate/RecognitionView;->access$500(Lcom/google/android/apps/translate/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/RecognitionView$5;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/apps/translate/RecognitionView;->access$200(Lcom/google/android/apps/translate/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/google/android/apps/translate/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translate/RecognitionView;->access$400(Lcom/google/android/apps/translate/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
