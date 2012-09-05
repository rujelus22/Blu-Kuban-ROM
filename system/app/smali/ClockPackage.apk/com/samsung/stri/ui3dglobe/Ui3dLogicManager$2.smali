.class Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->onViewportAnimationFlow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

.field final synthetic val$flowEvent:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 540
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->val$flowEvent:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 544
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->val$flowEvent:I

    if-nez v0, :cond_e

    .line 545
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;->onBeginGlobeViewAnimation()V

    .line 554
    :cond_d
    :goto_d
    return-void

    .line 547
    :cond_e
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->val$flowEvent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 548
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;->onEndGlobeViewAnimation()V

    goto :goto_d

    .line 551
    :cond_1d
    const-string v0, "Ui3dLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onViewportAnimationFlow(flowEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->val$flowEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Error. Unknown event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
