.class Lcom/wssnps/smlNpsHandler$1;
.super Ljava/util/TimerTask;
.source "smlNpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssnps/smlNpsHandler;->work()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssnps/smlNpsHandler;


# direct methods
.method constructor <init>(Lcom/wssnps/smlNpsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/wssnps/smlNpsHandler$1;->this$0:Lcom/wssnps/smlNpsHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1229
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1230
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "Setting is Changed!!!"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1231
    return-void
.end method
