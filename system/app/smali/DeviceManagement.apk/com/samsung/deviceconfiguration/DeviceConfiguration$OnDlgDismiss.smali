.class Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/deviceconfiguration/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDlgDismiss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;


# direct methods
.method private constructor <init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dlg"

    .prologue
    .line 389
    const-string v0, "DeviceConfiguration"

    const-string v1, "OnDlgDismiss : onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #calls: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcDone()V
    invoke-static {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$400(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    .line 391
    return-void
.end method
