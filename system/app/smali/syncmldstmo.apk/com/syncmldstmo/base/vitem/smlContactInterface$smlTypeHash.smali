.class public Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;
.super Ljava/lang/Object;
.source "smlContactInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlContactInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlTypeHash"
.end annotation


# static fields
.field public static TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

.field public static TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

.field public static TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

.field public static TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;


# instance fields
.field public c2s:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m_OtherClient:Ljava/lang/String;

.field public m_OtherServer:Ljava/lang/Integer;

.field public s2c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x100

    const/16 v3, 0x100

    .line 119
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    .line 120
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    .line 121
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    .line 122
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    .line 127
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "2"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "2"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "1"

    const/16 v2, 0x2001

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    const/16 v2, 0x2002

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "4"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "5"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "6"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "7"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "7"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "1"

    const/16 v2, 0x4001

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "2"

    const/16 v2, 0x4002

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "2"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    invoke-virtual {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "0"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "1"

    const/high16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "2"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "3"

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "4"

    const/high16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "5"

    const/high16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "6"

    const/high16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "7"

    const/high16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "-1"

    invoke-virtual {v0, v1, v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->add(Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    const-string v1, "-1"

    invoke-virtual {v0, v1, v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->setOtherType(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherClient:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherServer:Ljava/lang/Integer;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->s2c:Ljava/util/Hashtable;

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->c2s:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 5
    .parameter "PhoneType"
    .parameter "serverType"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->c2s:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->s2c:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public getPhoneOtherType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherClient:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType(I)Ljava/lang/String;
    .registers 4
    .parameter "serverType"

    .prologue
    .line 91
    if-nez p1, :cond_4

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->s2c:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public getServerOtherType()I
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherServer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServerType(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .parameter "PhoneType"

    .prologue
    .line 98
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->c2s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_b
.end method

.method setOtherType(Ljava/lang/String;I)V
    .registers 4
    .parameter "PhoneType"
    .parameter "serverType"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherClient:Ljava/lang/String;

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->m_OtherServer:Ljava/lang/Integer;

    .line 107
    return-void
.end method
