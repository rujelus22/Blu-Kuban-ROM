.class Lcom/infraware/office/evengine/EvGetConfig;
.super Lcom/infraware/office/evengine/EvTaskObj;
.source "EvTaskObj.java"


# instance fields
.field private m_ConfigInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvNative;Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V
    .registers 3
    .parameter "a_Native"
    .parameter "a_ConfigInfo"

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/infraware/office/evengine/EvTaskObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    .line 800
    iput-object p2, p0, Lcom/infraware/office/evengine/EvGetConfig;->m_ConfigInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    .line 801
    return-void
.end method


# virtual methods
.method doTask()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/infraware/office/evengine/EvGetConfig;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvGetConfig;->m_ConfigInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetConfig(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V

    .line 806
    return-void
.end method
