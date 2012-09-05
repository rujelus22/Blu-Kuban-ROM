.class Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->onCallback(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;->this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1157
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;->this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 1158
    return-void
.end method
