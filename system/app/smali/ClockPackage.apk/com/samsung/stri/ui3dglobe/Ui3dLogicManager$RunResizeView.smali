.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunResizeView"
.end annotation


# instance fields
.field private m_h:I

.field private m_w:I

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;II)V
    .registers 4
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->m_w:I

    .line 588
    iput p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->m_h:I

    .line 589
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->m_w:I

    iget v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;->m_h:I

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeResizeView(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$400(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;II)V

    .line 593
    return-void
.end method
