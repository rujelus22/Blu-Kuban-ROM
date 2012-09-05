.class Lcom/infraware/office/evengine/EvCancelObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;)V
    .registers 2
    .parameter "a_Native"

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 785
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCancelObj;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICancel()V

    .line 790
    return-void
.end method
