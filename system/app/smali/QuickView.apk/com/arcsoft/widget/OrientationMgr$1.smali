.class Lcom/arcsoft/widget/OrientationMgr$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/OrientationMgr;->registerMgr(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/OrientationMgr;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/OrientationMgr;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/arcsoft/widget/OrientationMgr$1;->this$0:Lcom/arcsoft/widget/OrientationMgr;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .parameter "orientation"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr$1;->this$0:Lcom/arcsoft/widget/OrientationMgr;

    #getter for: Lcom/arcsoft/widget/OrientationMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v0}, Lcom/arcsoft/widget/OrientationMgr;->access$000(Lcom/arcsoft/widget/OrientationMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 48
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr$1;->this$0:Lcom/arcsoft/widget/OrientationMgr;

    #getter for: Lcom/arcsoft/widget/OrientationMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v0}, Lcom/arcsoft/widget/OrientationMgr;->access$000(Lcom/arcsoft/widget/OrientationMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    .line 51
    :cond_17
    return-void
.end method
