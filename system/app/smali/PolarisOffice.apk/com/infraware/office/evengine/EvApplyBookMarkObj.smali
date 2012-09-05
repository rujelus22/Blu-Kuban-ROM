.class Lcom/infraware/office/evengine/EvApplyBookMarkObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;)V
    .registers 2
    .parameter "a_Native"

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 511
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/infraware/office/evengine/EvApplyBookMarkObj;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IApplyBookMark()V

    .line 516
    return-void
.end method
