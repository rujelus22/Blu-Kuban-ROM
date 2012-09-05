.class abstract Lcom/infraware/office/evengine/EvMemoObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;ILjava/lang/String;IIIII)V
    .registers 9
    .parameter "a_Native"
    .parameter "a_eMemoType"
    .parameter "a_sText"
    .parameter "a_nSelIndex"
    .parameter "a_nXpos"
    .parameter "a_nYpos"
    .parameter "a_nIconW"
    .parameter "a_nIconH"

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 709
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
