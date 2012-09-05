.class Lcom/infraware/office/evengine/EvRemoveAllBookMarkObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;)V
    .registers 2
    .parameter "a_Native"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 540
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/infraware/office/evengine/EvRemoveAllBookMarkObj;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IRemoveAllBookMark()V

    .line 545
    return-void
.end method
