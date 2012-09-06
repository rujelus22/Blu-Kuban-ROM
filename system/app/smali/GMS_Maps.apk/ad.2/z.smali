.class public Lad/z;
.super Lcom/google/googlenav/common/g;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/g;-><init>(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lad/z;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lad/z;->a(Ljava/lang/String;)Lcom/google/googlenav/common/g;

    move-result-object v0

    check-cast v0, Lad/z;

    .line 52
    if-nez v0, :cond_d

    .line 53
    new-instance v0, Lad/z;

    invoke-direct {v0, p0, p1}, Lad/z;-><init>(Ljava/lang/String;I)V

    .line 55
    :cond_d
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lad/z;
    .registers 2
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lad/z;->a(Ljava/lang/String;I)Lad/z;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/y;

    .line 204
    invoke-static {v0}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lad/y;Lad/y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Lad/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 123
    invoke-virtual {p0, p1}, Lad/z;->b(Lad/y;)V

    .line 127
    :cond_b
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lad/y;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    invoke-virtual {p0, p2}, Lad/z;->a(Lad/y;)Z

    .line 130
    :cond_16
    return-void
.end method

.method protected a(Ljava/io/DataInputStream;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 153
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 154
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 156
    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 158
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 160
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 161
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_39

    .line 162
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 164
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 166
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 173
    if-eqz v4, :cond_36

    if-eqz v3, :cond_36

    .line 174
    invoke-static {v4, v3}, Lad/y;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 161
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 179
    :cond_39
    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 184
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p0}, Lad/z;->b()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 187
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 189
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/y;

    .line 190
    const/4 v4, 0x2

    invoke-static {v0}, Lad/y;->a(Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 192
    const/4 v4, 0x3

    invoke-virtual {v0}, Lad/y;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 195
    invoke-virtual {v2, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 197
    :cond_33
    invoke-virtual {v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 198
    return-void
.end method

.method public a(Lad/y;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_6

    move v0, v1

    .line 99
    :goto_5
    return v0

    .line 73
    :cond_6
    invoke-virtual {p0}, Lad/z;->c()V

    .line 76
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/y;

    invoke-virtual {v0, p1}, Lad/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 78
    goto :goto_5

    .line 85
    :cond_21
    invoke-static {p1}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    if-ltz v0, :cond_41

    .line 87
    invoke-virtual {p0, v0}, Lad/z;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 88
    iget-object v4, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 86
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 93
    :cond_41
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v3, p0, Lad/z;->a:I

    if-lt v0, v3, :cond_50

    .line 94
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 97
    :cond_50
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lad/z;->e()V

    move v0, v2

    .line 99
    goto :goto_5
.end method

.method public b(Lad/y;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_10

    .line 105
    invoke-virtual {p0}, Lad/z;->c()V

    .line 106
    iget-object v0, p0, Lad/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    invoke-virtual {p0}, Lad/z;->e()V

    .line 110
    :cond_10
    return-void
.end method
