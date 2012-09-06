.class Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;
.super Ljava/lang/Object;
.source "ActionBarSpinnerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;->setTabWidth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

.field final synthetic val$containerView:Landroid/widget/LinearLayout;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;Landroid/view/View;Landroid/widget/LinearLayout;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->this$0:Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;

    iput-object p2, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$containerView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 365
    iget-object v3, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$rootView:Landroid/view/View;

    sget v4, Lcom/google/android/apps/translate/R$id;->tab_menu_fake_list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, fakeView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 367
    .local v2, width:I
    if-lez v2, :cond_20

    .line 368
    iget-object v3, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 369
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 370
    iget-object v3, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v3, p0, Lcom/google/android/apps/translate/ActionBarSpinnerAdapter$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 373
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    return-void
.end method
