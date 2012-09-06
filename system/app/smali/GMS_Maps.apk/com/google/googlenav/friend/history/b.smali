.class public Lcom/google/googlenav/friend/history/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 38
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 39
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    .line 42
    iget-object v3, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 43
    iget-object v3, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/Calendar;->set(III)V

    .line 44
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 56
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 81
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 83
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 85
    iget-object v3, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 86
    return-void
.end method

.method public static a()Lcom/google/googlenav/friend/history/b;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/history/b;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    if-lez v0, :cond_e

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startDay must be <= endDay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_e
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 244
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object p0

    goto :goto_12

    .line 247
    :cond_21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/history/b;)I
    .registers 4
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/googlenav/friend/history/b;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 161
    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 163
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 164
    new-instance v1, Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/googlenav/friend/history/b;-><init>(III)V

    return-object v1
.end method

.method public b(Lcom/google/googlenav/friend/history/b;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v1

    if-nez v1, :cond_8

    .line 191
    :cond_7
    :goto_7
    return v0

    .line 182
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v1

    if-lez v1, :cond_13

    .line 183
    invoke-virtual {p1, p0}, Lcom/google/googlenav/friend/history/b;->b(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    goto :goto_7

    .line 188
    :cond_13
    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 93
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/aL;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 94
    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 97
    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 100
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 103
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/history/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 117
    const/16 v0, 0x291

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_11
    return-object v0

    .line 118
    :cond_12
    new-instance v0, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/history/b;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(I)Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/history/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 119
    const/16 v0, 0x295

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 121
    :cond_29
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/googlenav/friend/history/b;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 133
    instance-of v0, p1, Lcom/google/googlenav/friend/history/b;

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    .line 138
    :goto_5
    return v0

    .line 136
    :cond_6
    check-cast p1, Lcom/google/googlenav/friend/history/b;

    .line 138
    iget-object v0, p1, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public f()J
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()I
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 5

    .prologue
    .line 255
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/friend/history/b;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
