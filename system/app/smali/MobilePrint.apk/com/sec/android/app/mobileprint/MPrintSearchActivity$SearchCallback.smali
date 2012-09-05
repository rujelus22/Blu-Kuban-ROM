.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Lcom/sec/android/app/mobileprint/MPrintSearchActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onSearch(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 4
    .parameter "printer"

    .prologue
    .line 738
    if-nez p1, :cond_a

    .line 739
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchActivity.SearchCallback : printerInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_9
    return-void

    .line 743
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public responseGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 5
    .parameter "printer"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1400(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1402(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 800
    :cond_17
    if-eqz p1, :cond_28

    iget-object v1, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mLanguages:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSelectedPrinter:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;
    invoke-static {v1, p1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$2202(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->gotoMainActivity()V
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$2300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    .line 827
    :goto_27
    return-void

    .line 807
    :cond_28
    if-nez p1, :cond_3d

    .line 808
    const/16 v0, 0x132

    .line 817
    .local v0, errorCode:I
    :goto_2c
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 810
    .end local v0           #errorCode:I
    :cond_3d
    iget v1, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d

    iget-object v1, p1, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 811
    const/16 v0, 0x69

    .restart local v0       #errorCode:I
    goto :goto_2c

    .line 814
    .end local v0           #errorCode:I
    :cond_4d
    const/16 v0, 0x66

    .restart local v0       #errorCode:I
    goto :goto_2c
.end method

.method public responseSearchCompleted()V
    .registers 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method
