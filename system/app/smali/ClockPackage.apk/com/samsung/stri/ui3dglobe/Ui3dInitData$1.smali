.class Lcom/samsung/stri/ui3dglobe/Ui3dInitData$1;
.super Ljava/lang/Object;
.source "Ui3dInitData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;


# direct methods
.method constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$1;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->RunInitData()V
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V

    .line 103
    return-void
.end method
