.class Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$1;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->onRender3DStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;->onRender3DStarted()V

    .line 226
    return-void
.end method
