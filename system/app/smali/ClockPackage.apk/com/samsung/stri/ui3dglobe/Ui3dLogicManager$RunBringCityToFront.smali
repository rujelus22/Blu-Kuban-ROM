.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;
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
    name = "RunBringCityToFront"
.end annotation


# instance fields
.field private m_bAnimateZoom:Z

.field private m_bBringCityWithAnimation:Z

.field private m_bSetCityZoomLevel:Z

.field private m_id:I

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZZZ)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "bSetCityZoomLevel"
    .parameter "bBringCityWithAnimation"
    .parameter "bAnimateZoom"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_id:I

    .line 629
    iput-boolean p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bSetCityZoomLevel:Z

    .line 630
    iput-boolean p4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bBringCityWithAnimation:Z

    .line 631
    iput-boolean p5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bAnimateZoom:Z

    .line 632
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 635
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_id:I

    iget-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bSetCityZoomLevel:Z

    iget-boolean v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bBringCityWithAnimation:Z

    iget-boolean v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;->m_bAnimateZoom:Z

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeBringCityToFront(IZZZ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$700(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZZZ)Z

    .line 637
    return-void
.end method
