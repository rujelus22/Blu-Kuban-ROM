.class Lcom/google/android/apps/translate/translation/OutputPanelView$4;
.super Ljava/lang/Object;
.source "OutputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;->showMessage(Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/OutputPanelView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$4;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$4;->this$0:Lcom/google/android/apps/translate/translation/OutputPanelView;

    #getter for: Lcom/google/android/apps/translate/translation/OutputPanelView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/OutputPanelView;->access$1200(Lcom/google/android/apps/translate/translation/OutputPanelView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/OutputPanelView$4;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    return-void
.end method
