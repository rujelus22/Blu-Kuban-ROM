.class Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$2;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$2;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment$2;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;

    invoke-virtual {v1}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DateTimeSettings;

    .line 591
    .local v0, target:Lcom/android/settings/DateTimeSettings;
    if-eqz v0, :cond_d

    .line 592
    #calls: Lcom/android/settings/DateTimeSettings;->initUI()V
    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->access$500(Lcom/android/settings/DateTimeSettings;)V

    .line 594
    :cond_d
    return-void
.end method
