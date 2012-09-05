.class Lcom/samsung/upnp/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/Device;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/Device;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/Device$1;->this$0:Lcom/samsung/upnp/Device;

    .line 2082
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/samsung/upnp/Device$1;->this$0:Lcom/samsung/upnp/Device;

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->announce()V

    .line 2086
    return-void
.end method
