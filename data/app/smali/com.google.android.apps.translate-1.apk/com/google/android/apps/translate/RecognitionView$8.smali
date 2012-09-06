.class Lcom/google/android/apps/translate/RecognitionView$8;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/RecognitionView;->finish()V
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
    .line 354
    iput-object p1, p0, Lcom/google/android/apps/translate/RecognitionView$8;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$8;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mSoundIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$700(Lcom/google/android/apps/translate/RecognitionView;)Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/translate/RecognitionView$8;->this$0:Lcom/google/android/apps/translate/RecognitionView;

    #getter for: Lcom/google/android/apps/translate/RecognitionView;->mStartButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/google/android/apps/translate/RecognitionView;->access$800(Lcom/google/android/apps/translate/RecognitionView;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 359
    return-void
.end method
