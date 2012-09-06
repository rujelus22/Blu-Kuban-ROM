.class public abstract Ln/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/m;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-wide/16 v1, 0x0

    .line 28
    new-instance v0, Ln/n;

    invoke-direct {v0, v1, v2, v1, v2}, Ln/n;-><init>(JJ)V

    sput-object v0, Ln/m;->a:Ln/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method static synthetic a(JJ)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3}, Ln/m;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ln/m;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 79
    if-nez p0, :cond_d

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null feature id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_d
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    array-length v2, v0

    if-ne v2, v4, :cond_63

    .line 86
    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    aget-object v1, v0, v5

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 87
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_49
    aget-object v1, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/i;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 91
    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/i;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 92
    new-instance v0, Ln/n;

    invoke-direct {v0, v1, v2, v3, v4}, Ln/n;-><init>(JJ)V

    .line 109
    :goto_62
    return-object v0

    .line 93
    :cond_63
    array-length v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_84

    .line 96
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    new-instance v0, Ln/q;

    new-instance v4, Ln/s;

    invoke-direct {v4, v2, v3}, Ln/s;-><init>(II)V

    invoke-direct {v0, v4, v1}, Ln/q;-><init>(Ln/s;I)V

    goto :goto_62

    .line 100
    :cond_84
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 105
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/i;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 106
    new-instance v0, Ln/o;

    invoke-direct {v0, v1, v2}, Ln/o;-><init>(J)V

    goto :goto_62

    .line 107
    :cond_9a
    const-string v0, "[0-9]{1,20}"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 108
    invoke-static {p0}, Lt/v;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 109
    new-instance v0, Ln/n;

    invoke-direct {v0, v1, v2}, Ln/n;-><init>(J)V

    goto :goto_62

    .line 111
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/DataInput;)Ln/n;
    .registers 6
    .parameter

    .prologue
    .line 51
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 52
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 53
    new-instance v4, Ln/n;

    invoke-direct {v4, v0, v1, v2, v3}, Ln/n;-><init>(JJ)V

    return-object v4
.end method

.method private static b(JJ)J
    .registers 16
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x2c

    const/16 v4, 0x20

    const/4 v10, 0x4

    const-wide v8, 0xffffffffffffL

    .line 135
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    .line 136
    shl-long v2, p0, v4

    and-long/2addr v2, v8

    ushr-long v4, p2, v4

    or-long/2addr v2, v4

    .line 137
    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    .line 138
    shl-long v6, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v6

    and-long/2addr v0, v8

    xor-long/2addr v0, v2

    .line 139
    shl-long v2, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v2

    and-long/2addr v0, v8

    xor-long/2addr v0, v4

    .line 140
    return-wide v0
.end method

.method public static b(Ljava/io/DataInput;)Ln/o;
    .registers 7
    .parameter

    .prologue
    .line 64
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 65
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 66
    new-instance v2, Ln/o;

    invoke-direct {v2, v0, v1}, Ln/o;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()I
    .registers 2

    .prologue
    .line 147
    const/16 v0, 0x28

    return v0
.end method
