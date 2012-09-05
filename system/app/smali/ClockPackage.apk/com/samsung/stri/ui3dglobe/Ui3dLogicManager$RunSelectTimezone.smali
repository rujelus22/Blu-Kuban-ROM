.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;
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
    name = "RunSelectTimezone"
.end annotation


# instance fields
.field private m_id:I

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V
    .registers 3
    .parameter
    .parameter "id"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;->m_id:I

    .line 616
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;->m_id:I

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeSelectTimezone(I)V
    invoke-static {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$600(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V

    .line 620
    return-void
.end method
