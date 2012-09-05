.class abstract Lcom/infraware/office/evengine/EvPrintObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;IIILjava/lang/String;)V
    .registers 6
    .parameter "a_Native"
    .parameter "a_ePaperType"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 759
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
