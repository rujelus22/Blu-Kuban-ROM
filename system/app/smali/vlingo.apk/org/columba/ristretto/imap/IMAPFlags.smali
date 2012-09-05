.class public Lorg/columba/ristretto/imap/IMAPFlags;
.super Lorg/columba/ristretto/message/Flags;
.source "IMAPFlags.java"


# static fields
.field public static final JUNK:S = 0x100s


# instance fields
.field private index:I

.field private uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/columba/ristretto/message/Flags;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/Flags;-><init>(Ljava/io/ObjectInputStream;)V

    .line 88
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/Flags;-><init>(S)V

    .line 78
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lorg/columba/ristretto/imap/IMAPFlags;->index:I

    return v0
.end method

.method public getJunk()Z
    .registers 2

    .prologue
    .line 124
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/imap/IMAPFlags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getUid()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPFlags;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 192
    iput p1, p0, Lorg/columba/ristretto/imap/IMAPFlags;->index:I

    .line 193
    return-void
.end method

.method public setJunk(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 115
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lorg/columba/ristretto/imap/IMAPFlags;->set(SZ)V

    .line 116
    return-void
.end method

.method public setUid(Ljava/lang/Object;)V
    .registers 2
    .parameter "object"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPFlags;->uid:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, first:Z
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPFlags;->getAnswered()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 136
    const-string v2, "\\Answered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const/4 v0, 0x0

    .line 140
    :cond_14
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPFlags;->getFlagged()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 141
    if-nez v0, :cond_21

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_21
    const/4 v0, 0x0

    .line 143
    const-string v2, "\\Flagged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_27
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPFlags;->getDeleted()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 147
    if-nez v0, :cond_34

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_34
    const/4 v0, 0x0

    .line 149
    const-string v2, "\\Deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_3a
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPFlags;->getSeen()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 153
    if-nez v0, :cond_47

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_47
    const/4 v0, 0x0

    .line 155
    const-string v2, "\\Seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_4d
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPFlags;->getDraft()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 159
    if-nez v0, :cond_5a

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_5a
    const/4 v0, 0x0

    .line 161
    const-string v2, "\\Draft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_60
    const/16 v2, 0x100

    invoke-virtual {p0, v2}, Lorg/columba/ristretto/imap/IMAPFlags;->get(S)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 172
    if-nez v0, :cond_6f

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_6f
    const/4 v0, 0x0

    .line 174
    const-string v2, "JUNK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_75
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
