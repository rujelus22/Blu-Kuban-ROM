.class Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 106
    iput-object p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 109
    const-string v1, "DeviceConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey arg0... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "DeviceConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey arg1... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "DeviceConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey sessionstatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #getter for: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I
    invoke-static {v3}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$100(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch p2, :pswitch_data_6a

    .line 122
    :goto_52
    return v0

    .line 114
    :pswitch_53
    iget-object v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #getter for: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$200(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 115
    iget-object v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #calls: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->cancelSession()V
    invoke-static {v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$300(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    goto :goto_52

    .line 118
    :pswitch_62
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;->this$0:Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    #calls: Lcom/samsung/deviceconfiguration/DeviceConfiguration;->cancelSession()V
    invoke-static {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->access$300(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_52

    .line 112
    nop

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_62
        :pswitch_53
    .end packed-switch
.end method
