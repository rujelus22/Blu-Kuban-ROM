.class Lcom/infraware/office/evengine/EvRemoveBookMarkObj;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_sFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_sFilePath"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 526
    iput-object p2, p0, Lcom/infraware/office/evengine/EvRemoveBookMarkObj;->m_sFilePath:Ljava/lang/String;

    .line 527
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/infraware/office/evengine/EvRemoveBookMarkObj;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvRemoveBookMarkObj;->m_sFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 532
    return-void
.end method
