.class public Lorg/columba/ristretto/message/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field private definedFlags:[Ljava/lang/String;

.field private exists:I

.field private firstUnseen:I

.field private permanentFlags:[Ljava/lang/String;

.field private recent:I

.field private uidNext:I

.field private uidValidity:I

.field private unseen:I

.field private writeAccess:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->firstUnseen:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidValidity:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    .line 66
    return-void
.end method


# virtual methods
.method public decExists()V
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    .line 207
    return-void
.end method

.method public decRecent()V
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    .line 221
    return-void
.end method

.method public decUnseen()V
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    .line 214
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 243
    instance-of v2, p1, Lorg/columba/ristretto/message/MailboxInfo;

    if-nez v2, :cond_6

    .line 247
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 245
    check-cast v0, Lorg/columba/ristretto/message/MailboxInfo;

    .line 247
    .local v0, other:Lorg/columba/ristretto/message/MailboxInfo;
    iget v2, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    iget v3, v0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    iget v3, v0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    iget v3, v0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getDefinedFlags()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->definedFlags:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExists()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    return v0
.end method

.method public getFirstUnseen()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->firstUnseen:I

    return v0
.end method

.method public getPermanentFlags()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->permanentFlags:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecent()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    return v0
.end method

.method public getUidNext()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    return v0
.end method

.method public getUidValidity()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidValidity:I

    return v0
.end method

.method public getUnseen()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    return v0
.end method

.method public incExists()V
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    .line 186
    return-void
.end method

.method public incRecent()V
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    .line 200
    return-void
.end method

.method public incUnseen()V
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    .line 193
    return-void
.end method

.method public isWriteAccess()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->writeAccess:Z

    return v0
.end method

.method public predictNextUid()I
    .registers 3

    .prologue
    .line 178
    iget v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->firstUnseen:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidValidity:I

    iput v0, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    .line 75
    return-void
.end method

.method public setDefinedFlags([Ljava/lang/String;)V
    .registers 2
    .parameter "definedFlags"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->definedFlags:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setExists(I)V
    .registers 2
    .parameter "exists"

    .prologue
    .line 99
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->exists:I

    .line 100
    return-void
.end method

.method public setFirstUnseen(I)V
    .registers 2
    .parameter "firstUnseen"

    .prologue
    .line 111
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->firstUnseen:I

    .line 112
    return-void
.end method

.method public setPermanentFlags([Ljava/lang/String;)V
    .registers 2
    .parameter "permanentFlags"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->permanentFlags:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setRecent(I)V
    .registers 2
    .parameter "recent"

    .prologue
    .line 135
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->recent:I

    .line 136
    return-void
.end method

.method public setUidNext(I)V
    .registers 2
    .parameter "uidNext"

    .prologue
    .line 147
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidNext:I

    .line 148
    return-void
.end method

.method public setUidValidity(I)V
    .registers 2
    .parameter "uidValidity"

    .prologue
    .line 159
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->uidValidity:I

    .line 160
    return-void
.end method

.method public setUnseen(I)V
    .registers 2
    .parameter "unseen"

    .prologue
    .line 232
    iput p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->unseen:I

    .line 233
    return-void
.end method

.method public setWriteAccess(Z)V
    .registers 2
    .parameter "writeAccess"

    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/columba/ristretto/message/MailboxInfo;->writeAccess:Z

    .line 172
    return-void
.end method
