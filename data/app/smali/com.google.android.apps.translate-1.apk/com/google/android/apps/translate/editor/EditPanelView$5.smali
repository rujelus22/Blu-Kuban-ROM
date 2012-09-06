.class Lcom/google/android/apps/translate/editor/EditPanelView$5;
.super Ljava/lang/Object;
.source "EditPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/EditPanelView;->hideTranslationLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/EditPanelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$5;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView$5;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mTranslateProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$300(Lcom/google/android/apps/translate/editor/EditPanelView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/EditPanelView$5;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mAccept:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$400(Lcom/google/android/apps/translate/editor/EditPanelView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    return-void
.end method
