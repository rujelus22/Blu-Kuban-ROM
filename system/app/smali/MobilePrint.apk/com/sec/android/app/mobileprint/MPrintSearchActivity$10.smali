.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showPrinterList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 467
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 468
    .local v0, listViewRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListFrame:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->addProgressOnDialog(Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V
    invoke-static {v2, v3, v1, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/graphics/Rect;)V

    .line 472
    .end local v0           #listViewRect:Landroid/graphics/Rect;
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$10;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->rearrangePrinterListDialog()V
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    .line 473
    return-void
.end method
