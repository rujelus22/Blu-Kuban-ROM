.class Lcom/android/phone/RoamingAlertDialog$1;
.super Ljava/lang/Object;
.source "RoamingAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAlertDialog;->ShowRoamingAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/RoamingAlertDialog$1;->this$0:Lcom/android/phone/RoamingAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0}, Lcom/android/phone/CallController;->callAgain()V

    .line 49
    iget-object v0, p0, Lcom/android/phone/RoamingAlertDialog$1;->this$0:Lcom/android/phone/RoamingAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAlertDialog;->finish()V

    .line 50
    return-void
.end method
