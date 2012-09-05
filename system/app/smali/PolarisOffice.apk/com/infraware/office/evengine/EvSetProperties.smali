.class Lcom/infraware/office/evengine/EvSetProperties;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field m_Properties:Lcom/infraware/office/evengine/EV$PROPERTIES;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;Lcom/infraware/office/evengine/EV$PROPERTIES;)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_Properties"

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 832
    iput-object p2, p0, Lcom/infraware/office/evengine/EvSetProperties;->m_Properties:Lcom/infraware/office/evengine/EV$PROPERTIES;

    .line 833
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/infraware/office/evengine/EvSetProperties;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvSetProperties;->m_Properties:Lcom/infraware/office/evengine/EV$PROPERTIES;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 838
    return-void
.end method
