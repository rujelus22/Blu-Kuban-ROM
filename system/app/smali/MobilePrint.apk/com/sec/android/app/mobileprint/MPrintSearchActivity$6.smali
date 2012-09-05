.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$200(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_24

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mSettingManager:Lcom/sec/android/app/mobileprint/MPrintSettingManager;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Lcom/sec/android/app/mobileprint/MPrintSettingManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/mobileprint/MPrintSettingManager;->saveRestrictAlertInfo(Z)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNeverShowCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$202(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 292
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mRestrictAlertClosed:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$402(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Z)Z

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->startMainProcess()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V

    .line 294
    return-void
.end method
