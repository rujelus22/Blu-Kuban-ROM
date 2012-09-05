.class public Lcom/wssnps/database/smlContactItem$TypeHash;
.super Ljava/lang/Object;
.source "smlContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/database/smlContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeHash"
.end annotation


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
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherClient:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherServer:Ljava/lang/Integer;

    .line 243
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->s2c:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->c2s:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 5
    .parameter "PhoneType"
    .parameter "serverType"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->c2s:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->s2c:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public getPhoneOtherType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherClient:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType(I)Ljava/lang/String;
    .registers 4
    .parameter "serverType"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->s2c:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerOtherType()I
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherServer:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getServerType(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .parameter "PhoneType"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->c2s:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method setOtherType(Ljava/lang/String;I)V
    .registers 4
    .parameter "PhoneType"
    .parameter "serverType"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherClient:Ljava/lang/String;

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wssnps/database/smlContactItem$TypeHash;->m_OtherServer:Ljava/lang/Integer;

    .line 268
    return-void
.end method
