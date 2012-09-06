.class public LAe;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, LAe;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput p2, p0, LAe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, LAe;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, LAe;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget v0, p0, LAe;->a:I

    if-nez v0, :cond_30

    .line 518
    iget-object v0, p0, LAe;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Landroid/view/View;

    move-result-object v0

    sget v1, Lup;->toolbar_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 519
    iget-object v0, p0, LAe;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Landroid/view/View;

    move-result-object v0

    sget v1, Lup;->toolbar_buttons_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 522
    :cond_30
    return-void
.end method
