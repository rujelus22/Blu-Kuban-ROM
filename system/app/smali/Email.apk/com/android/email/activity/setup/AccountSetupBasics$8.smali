.class Lcom/android/email/activity/setup/AccountSetupBasics$8;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 2
    .parameter

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$8;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$8;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->dismissDialog(I)V

    .line 2109
    return-void
.end method
