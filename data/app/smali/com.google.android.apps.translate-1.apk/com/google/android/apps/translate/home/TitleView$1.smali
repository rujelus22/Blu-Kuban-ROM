.class Lcom/google/android/apps/translate/home/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/home/TitleView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/home/TitleView;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TitleView$1;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/apps/translate/home/TitleView$1;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/home/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/google/android/apps/translate/home/TitleView$1;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    #getter for: Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/home/TitleView;->access$000(Lcom/google/android/apps/translate/home/TitleView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/translate/home/TitleView$1;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/home/TitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/translate/home/TitleView$1;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/home/TitleView;->invalidate()V

    .line 46
    return-void
.end method
