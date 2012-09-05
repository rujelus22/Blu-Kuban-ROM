.class Lcom/infraware/office/evengine/EvSaveBookMarkObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;)V
    .registers 2
    .parameter "a_Native"

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 498
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSaveBookMarkObj;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISaveBookMark()V

    .line 503
    return-void
.end method
