.class public Landroid/support/place/api/lighting/Light;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mLevel:I

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/support/place/api/lighting/Light;->mId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p4}, Landroid/support/place/api/lighting/Light;->setLocation(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p3}, Landroid/support/place/api/lighting/Light;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p5}, Landroid/support/place/api/lighting/Light;->setLevel(I)V

    .line 41
    return-void
.end method

.method public static deserializeList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    .line 156
    invoke-static {v0}, Landroid/support/place/api/lighting/Light;->fromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/api/lighting/Light;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 158
    :cond_1d
    return-object v1
.end method

.method public static fromAddress(Ljava/lang/String;)Landroid/support/place/api/lighting/Light;
    .registers 7
    .parameter

    .prologue
    .line 51
    new-instance v0, Landroid/support/place/api/lighting/Light;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/place/api/lighting/Light;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static fromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/api/lighting/Light;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "address"

    invoke-virtual {p0, v2}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 59
    const-string v2, "address"

    invoke-virtual {p0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    :goto_15
    const-string v3, "name"

    invoke-virtual {p0, v3}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 63
    const-string v3, "name"

    invoke-virtual {p0, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    :goto_23
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 67
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    :goto_31
    const/4 v5, -0x1

    .line 70
    const-string v0, "level"

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 71
    const-string v0, "level"

    invoke-virtual {p0, v0}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 73
    :cond_40
    new-instance v0, Landroid/support/place/api/lighting/Light;

    invoke-direct/range {v0 .. v5}, Landroid/support/place/api/lighting/Light;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_46
    move-object v4, v0

    goto :goto_31

    :cond_48
    move-object v3, v0

    goto :goto_23

    :cond_4a
    move-object v2, v0

    goto :goto_15
.end method

.method public static serializeList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/api/lighting/Light;

    .line 146
    invoke-virtual {v0}, Landroid/support/place/api/lighting/Light;->toRpcData()Landroid/support/place/rpc/RpcData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 148
    :cond_1d
    return-object v1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/support/place/api/lighting/Light;->mLevel:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .registers 5
    .parameter

    .prologue
    .line 98
    if-gez p1, :cond_9

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 99
    :cond_9
    iput p1, p0, Landroid/support/place/api/lighting/Light;->mLevel:I

    return-void

    .line 101
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid light level ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for light "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/api/lighting/Light;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/place/api/lighting/Light;->mLocation:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toRpcData()Landroid/support/place/rpc/RpcData;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 116
    const-string v1, "id"

    iget-object v2, p0, Landroid/support/place/api/lighting/Light;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 118
    const-string v1, "address"

    iget-object v2, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_21
    iget v1, p0, Landroid/support/place/api/lighting/Light;->mLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    .line 121
    const-string v1, "level"

    iget v2, p0, Landroid/support/place/api/lighting/Light;->mLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 123
    :cond_2d
    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mLocation:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mLocation:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 124
    const-string v1, "location"

    iget-object v2, p0, Landroid/support/place/api/lighting/Light;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_42
    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 127
    const-string v1, "name"

    iget-object v2, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_57
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mAddress:Ljava/lang/String;

    .line 137
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/support/place/api/lighting/Light;->mName:Ljava/lang/String;

    goto :goto_c
.end method
