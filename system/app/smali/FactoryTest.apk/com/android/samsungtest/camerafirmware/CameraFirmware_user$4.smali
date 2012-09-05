.class Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$4;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$4;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$4;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->finish()V

    .line 373
    return-void
.end method
