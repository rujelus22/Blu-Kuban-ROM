.class Lcom/android/MtpApplication/BluetoothPopup$4;
.super Ljava/lang/Object;
.source "BluetoothPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/MtpApplication/BluetoothPopup;->displayBluetoothPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/BluetoothPopup;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/BluetoothPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/MtpApplication/BluetoothPopup$4;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/MtpApplication/BluetoothPopup$4;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-virtual {v0}, Lcom/android/MtpApplication/BluetoothPopup;->finish()V

    .line 115
    return-void
.end method
