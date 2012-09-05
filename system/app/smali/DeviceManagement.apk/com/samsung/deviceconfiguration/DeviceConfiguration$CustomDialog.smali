.class Lcom/samsung/deviceconfiguration/DeviceConfiguration$CustomDialog;
.super Landroid/app/ProgressDialog;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/deviceconfiguration/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$CustomDialog;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    .line 469
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 470
    return-void
.end method
