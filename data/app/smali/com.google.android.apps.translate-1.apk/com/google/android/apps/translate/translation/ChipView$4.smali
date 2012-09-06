.class Lcom/google/android/apps/translate/translation/ChipView$4;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/ChipView;->selectChip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;)V
    .registers 2
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$4;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$4;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$4;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mInputTextChip:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$600(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v1

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v1, v3, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$4;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/ChipView$4;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mTranslationChip:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/ChipView;->access$800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/widget/LinearLayout;

    move-result-object v1

    #calls: Lcom/google/android/apps/translate/translation/ChipView;->setChipBackgroundResource(Landroid/view/View;ZZZ)V
    invoke-static {v0, v1, v3, v2, v2}, Lcom/google/android/apps/translate/translation/ChipView;->access$700(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;ZZZ)V

    .line 621
    return-void
.end method
