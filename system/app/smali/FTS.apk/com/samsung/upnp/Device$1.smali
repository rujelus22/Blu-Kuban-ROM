.class Lcom/samsung/upnp/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/Device;->start(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/Device;

.field private final synthetic val$isMobileAPMode:Z


# direct methods
.method constructor <init>(Lcom/samsung/upnp/Device;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/Device$1;->this$0:Lcom/samsung/upnp/Device;

    iput-boolean p2, p0, Lcom/samsung/upnp/Device$1;->val$isMobileAPMode:Z

    .line 2078
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/samsung/upnp/Device$1;->val$isMobileAPMode:Z

    if-nez v0, :cond_9

    .line 2082
    iget-object v0, p0, Lcom/samsung/upnp/Device$1;->this$0:Lcom/samsung/upnp/Device;

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->announce()V

    .line 2083
    :cond_9
    return-void
.end method
