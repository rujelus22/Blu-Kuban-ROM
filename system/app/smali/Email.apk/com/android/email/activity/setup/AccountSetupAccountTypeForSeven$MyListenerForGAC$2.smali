.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V
    .registers 2
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;->this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1050
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;->this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    .line 1052
    return-void
.end method
