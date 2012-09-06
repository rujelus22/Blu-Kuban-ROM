.class public LO/a;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static e:Z

.field private static final f:Ljava/util/Set;

.field private static g:I

.field private static h:J


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LO/a;->f:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 80
    iput-object p1, p0, LO/a;->b:Ljava/lang/String;

    .line 81
    iput p2, p0, LO/a;->a:I

    .line 82
    iput-wide p3, p0, LO/a;->d:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LO/a;->c:J

    .line 84
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    sput p2, LO/a;->g:I

    .line 86
    sput-wide p3, LO/a;->h:J

    .line 88
    :cond_19
    return-void
.end method

.method static a(J)Z
    .registers 4
    .parameter

    .prologue
    .line 211
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 133
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, LO/a;->a(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;IJ)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {p0, p1}, LO/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, LO/a;

    invoke-direct {v1, p0, p1, p2, p3}, LO/a;-><init>(Ljava/lang/String;IJ)V

    .line 146
    invoke-static {v0, v1}, LO/a;->a(Ljava/lang/String;LO/a;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;LO/a;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 156
    sget-object v0, LO/a;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 157
    const/4 v0, 0x0

    .line 163
    :goto_9
    return v0

    .line 159
    :cond_a
    sget-boolean v0, LO/a;->e:Z

    if-nez v0, :cond_15

    .line 160
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->c(Lac/g;)V

    .line 162
    :cond_15
    sget-object v0, LO/a;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(J)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/o;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 197
    const/4 v1, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/bi;->a()I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 200
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 202
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 92
    const/16 v0, 0x45

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 108
    const/4 v1, 0x2

    iget v2, p0, LO/a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 109
    const/4 v1, 0x1

    iget-object v2, p0, LO/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 110
    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, LO/a;->c(J)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 112
    iget-wide v1, p0, LO/a;->d:J

    invoke-static {v1, v2}, LO/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 114
    const/4 v1, 0x4

    iget-wide v2, p0, LO/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 116
    :cond_2d
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 117
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
