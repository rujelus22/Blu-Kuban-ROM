.class abstract Lcom/infraware/office/evengine/EvChangeDisplayObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;I)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_eType"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 380
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
