.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 478
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 480
    invoke-static {}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isUSBConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isWifiConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 481
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->scanPrinter()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    .line 486
    :goto_19
    return-void

    .line 484
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$11;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showDialog(I)V

    goto :goto_19
.end method
