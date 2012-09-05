.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 214
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->finish()V

    .line 216
    :cond_19
    return-void
.end method
