.class public LsW;
.super Ljava/lang/Object;
.source "ByteRange.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "^\\s*bytes\\s+(\\d+)-(\\d+)/(\\d+)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LsW;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 59
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, LsW;-><init>(JJ)V

    .line 60
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    cmp-long v0, v1, p1

    if-gtz v0, :cond_d

    cmp-long v0, p1, p3

    if-lez v0, :cond_11

    :cond_d
    cmp-long v0, p3, v1

    if-gez v0, :cond_1a

    :cond_11
    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, LafQ;->a(Z)V

    .line 48
    iput-wide p1, p0, LsW;->a:J

    .line 49
    iput-wide p3, p0, LsW;->b:J

    .line 50
    return-void

    .line 47
    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)LsW;
    .registers 7
    .parameter

    .prologue
    .line 101
    sget-object v0, LsW;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_26

    .line 103
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content-range format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 106
    :cond_26
    new-instance v1, LsW;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, LsW;-><init>(JJ)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    iget-wide v0, p0, LsW;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LsW;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LsW;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_29
    return-object v0

    .line 75
    :cond_2a
    iget-wide v0, p0, LsW;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_46

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LsW;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 78
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LsW;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p1, LsW;

    if-nez v1, :cond_6

    .line 94
    :cond_5
    :goto_5
    return v0

    .line 93
    :cond_6
    check-cast p1, LsW;

    .line 94
    iget-wide v1, p1, LsW;->a:J

    iget-wide v3, p0, LsW;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, p1, LsW;->b:J

    iget-wide v3, p0, LsW;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 85
    iget-wide v0, p0, LsW;->a:J

    iget-wide v2, p0, LsW;->b:J

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, LsW;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
