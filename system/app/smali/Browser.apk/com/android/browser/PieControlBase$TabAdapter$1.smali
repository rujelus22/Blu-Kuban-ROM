.class Lcom/android/browser/PieControlBase$TabAdapter$1;
.super Ljava/lang/Object;
.source "PieControlBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControlBase$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControlBase$TabAdapter;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControlBase$TabAdapter;Lcom/android/browser/Tab;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/browser/PieControlBase$TabAdapter$1;->this$0:Lcom/android/browser/PieControlBase$TabAdapter;

    iput-object p2, p0, Lcom/android/browser/PieControlBase$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/browser/PieControlBase$TabAdapter$1;->this$0:Lcom/android/browser/PieControlBase$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/PieControlBase$TabAdapter;->mUiController:Lcom/android/browser/UiController;

    iget-object v1, p0, Lcom/android/browser/PieControlBase$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 175
    return-void
.end method