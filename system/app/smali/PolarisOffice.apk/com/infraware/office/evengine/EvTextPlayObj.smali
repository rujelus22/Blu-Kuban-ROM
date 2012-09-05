.class abstract Lcom/infraware/office/evengine/EvTextPlayObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIII)V
    .registers 6
    .parameter "a_Native"
    .parameter "a_ePlayType"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 734
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
