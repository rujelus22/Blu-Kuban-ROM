.class public Lcom/samsung/upnp/UPnPStatus;
.super Ljava/lang/Object;
.source "UPnPStatus.java"


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/UPnPStatus;->setCode(I)V

    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .registers 2
    .parameter "code"

    .prologue
    .line 48
    sparse-switch p0, :sswitch_data_2e

    .line 63
    const-string v0, ""

    :goto_5
    return-object v0

    .line 49
    :sswitch_6
    const-string v0, "Invalid Action"

    goto :goto_5

    .line 50
    :sswitch_9
    const-string v0, "Invalid Args"

    goto :goto_5

    .line 51
    :sswitch_c
    const-string v0, "Out of Sync"

    goto :goto_5

    .line 52
    :sswitch_f
    const-string v0, "Invalid Var"

    goto :goto_5

    .line 53
    :sswitch_12
    const-string v0, "Precondition Failed"

    goto :goto_5

    .line 54
    :sswitch_15
    const-string v0, "Action Failed"

    goto :goto_5

    .line 55
    :sswitch_18
    const-string v0, "No such object"

    goto :goto_5

    .line 56
    :sswitch_1b
    const-string v0, "Invalid Connection Reference"

    goto :goto_5

    .line 57
    :sswitch_1e
    const-string v0, "Invalid Search Criteria"

    goto :goto_5

    .line 58
    :sswitch_21
    const-string v0, "No Such Container"

    goto :goto_5

    .line 59
    :sswitch_24
    const-string v0, "Invalid Sort Criteria"

    goto :goto_5

    .line 60
    :sswitch_27
    const-string v0, "Restricted Object"

    goto :goto_5

    .line 61
    :sswitch_2a
    const-string v0, "Restricted Parent Object"

    goto :goto_5

    .line 48
    nop

    :sswitch_data_2e
    .sparse-switch
        0x191 -> :sswitch_6
        0x192 -> :sswitch_9
        0x193 -> :sswitch_c
        0x194 -> :sswitch_f
        0x19c -> :sswitch_12
        0x1f5 -> :sswitch_15
        0x2bd -> :sswitch_18
        0x2c2 -> :sswitch_1b
        0x2c4 -> :sswitch_1e
        0x2c5 -> :sswitch_24
        0x2c6 -> :sswitch_21
        0x2c7 -> :sswitch_27
        0x2c9 -> :sswitch_2a
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/samsung/upnp/UPnPStatus;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/upnp/UPnPStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/upnp/UPnPStatus;->code:I

    .line 91
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/upnp/UPnPStatus;->description:Ljava/lang/String;

    .line 99
    return-void
.end method
