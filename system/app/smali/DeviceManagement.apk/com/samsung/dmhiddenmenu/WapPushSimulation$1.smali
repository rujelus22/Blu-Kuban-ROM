.class Lcom/samsung/dmhiddenmenu/WapPushSimulation$1;
.super Ljava/lang/Object;
.source "WapPushSimulation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmhiddenmenu/WapPushSimulation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmhiddenmenu/WapPushSimulation;


# direct methods
.method constructor <init>(Lcom/samsung/dmhiddenmenu/WapPushSimulation;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation$1;->this$0:Lcom/samsung/dmhiddenmenu/WapPushSimulation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation$1;->this$0:Lcom/samsung/dmhiddenmenu/WapPushSimulation;

    #calls: Lcom/samsung/dmhiddenmenu/WapPushSimulation;->sendWapPush()V
    invoke-static {v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->access$000(Lcom/samsung/dmhiddenmenu/WapPushSimulation;)V

    .line 32
    return-void
.end method
