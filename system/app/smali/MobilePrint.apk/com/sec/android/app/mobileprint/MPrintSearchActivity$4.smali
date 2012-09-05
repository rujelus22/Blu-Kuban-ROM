.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterListDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 201
    :cond_14
    const-string v1, "com.sec.android.app.mobileprint.PRINT"

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->setResult(I)V

    .line 207
    :goto_32
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->finish()V

    .line 209
    :cond_37
    return-void

    .line 205
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->setResult(I)V

    goto :goto_32
.end method
