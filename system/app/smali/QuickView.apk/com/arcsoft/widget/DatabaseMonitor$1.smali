.class Lcom/arcsoft/widget/DatabaseMonitor$1;
.super Landroid/database/ContentObserver;
.source "DatabaseMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/DatabaseMonitor;->registerMgr(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DatabaseMonitor;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/DatabaseMonitor;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/arcsoft/widget/DatabaseMonitor$1;->this$0:Lcom/arcsoft/widget/DatabaseMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/arcsoft/widget/DatabaseMonitor$1;->this$0:Lcom/arcsoft/widget/DatabaseMonitor;

    #getter for: Lcom/arcsoft/widget/DatabaseMonitor;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v0}, Lcom/arcsoft/widget/DatabaseMonitor;->access$000(Lcom/arcsoft/widget/DatabaseMonitor;)Lcom/arcsoft/widget/IBase;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    .line 44
    return-void
.end method
