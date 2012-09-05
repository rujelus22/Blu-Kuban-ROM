.class Lcom/samsung/deviceconfiguration/DeviceConfiguration$2;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/deviceconfiguration/DeviceConfiguration;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;


# direct methods
.method constructor <init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$2;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "whichButton"

    .prologue
    .line 145
    const-string v0, "DeviceConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog DIALOG_CHECK_KEY onClick..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$2;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #calls: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->cancelSession()V
    invoke-static {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$300(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    .line 149
    return-void
.end method
