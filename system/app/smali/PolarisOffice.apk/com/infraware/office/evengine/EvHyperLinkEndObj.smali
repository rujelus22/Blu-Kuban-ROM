.class Lcom/infraware/office/evengine/EvHyperLinkEndObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;)V
    .registers 2
    .parameter "a_Native"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 573
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/infraware/office/evengine/EvHyperLinkEndObj;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHyperLinkEnd()V

    .line 578
    return-void
.end method
