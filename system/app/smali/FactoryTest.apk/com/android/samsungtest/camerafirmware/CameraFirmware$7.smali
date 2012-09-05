.class Lcom/android/samsungtest/camerafirmware/CameraFirmware$7;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$7;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$7;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->finish()V

    .line 614
    return-void
.end method
