.class Lcom/samsung/client/DeviceManagement$1$2;
.super Ljava/lang/Object;
.source "DeviceManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/client/DeviceManagement$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/client/DeviceManagement$1;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement$1;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$1$2;->this$1:Lcom/samsung/client/DeviceManagement$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement$1$2;->this$1:Lcom/samsung/client/DeviceManagement$1;

    iget-object v0, v0, Lcom/samsung/client/DeviceManagement$1;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-virtual {v0}, Lcom/samsung/client/DeviceManagement;->finish()V

    .line 95
    return-void
.end method
