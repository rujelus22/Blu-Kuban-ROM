.class Lcom/sprint/w/installer/service/DefaultPackService$1;
.super Ljava/lang/Thread;
.source "DefaultPackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/service/DefaultPackService;->verifyDefaultPack(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/service/DefaultPackService;

.field final synthetic val$reinstall:Z

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iput p2, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->val$startId:I

    iput-boolean p3, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->val$reinstall:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    invoke-virtual {v0}, Lcom/sprint/w/installer/service/DefaultPackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/util/Util;->waitForNetwork(Landroid/content/Context;J)Z

    .line 49
    iget-object v0, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->this$0:Lcom/sprint/w/installer/service/DefaultPackService;

    iget v1, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->val$startId:I

    iget-boolean v2, p0, Lcom/sprint/w/installer/service/DefaultPackService$1;->val$reinstall:Z

    #calls: Lcom/sprint/w/installer/service/DefaultPackService;->installDefaultPack(IZ)V
    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/service/DefaultPackService;->access$000(Lcom/sprint/w/installer/service/DefaultPackService;IZ)V

    .line 50
    return-void
.end method
