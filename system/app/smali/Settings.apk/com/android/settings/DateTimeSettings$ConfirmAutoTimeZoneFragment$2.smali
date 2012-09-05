.class Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$2;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$2;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$2;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;

    invoke-virtual {v1}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DateTimeSettings;

    .line 661
    .local v0, target:Lcom/android/settings/DateTimeSettings;
    if-eqz v0, :cond_d

    .line 662
    #calls: Lcom/android/settings/DateTimeSettings;->initUI()V
    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->access$500(Lcom/android/settings/DateTimeSettings;)V

    .line 664
    :cond_d
    return-void
.end method
