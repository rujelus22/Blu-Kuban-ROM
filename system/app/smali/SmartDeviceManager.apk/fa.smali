.class public final Lfa;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lfa;


# instance fields
.field final b:J

.field final c:J

.field final d:I

.field final e:I

.field final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 22
    new-instance v0, Lfa;

    const-string v1, "N/A"

    const-wide/16 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lfa;-><init>(Ljava/lang/Object;JII)V

    sput-object v0, Lfa;->a:Lfa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;JII)V
    .registers 8
    .parameter
        .annotation runtime Lfx;
            a = "sourceRef"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lfx;
            a = "charOffset"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lfx;
            a = "lineNr"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lfx;
            a = "columnNr"
        .end annotation
    .end parameter
    .annotation runtime Lfq;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lfa;->f:Ljava/lang/Object;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfa;->b:J

    .line 54
    iput-wide p2, p0, Lfa;->c:J

    .line 55
    iput p4, p0, Lfa;->d:I

    .line 56
    iput p5, p0, Lfa;->e:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JIIB)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lfa;-><init>(Ljava/lang/Object;JII)V

    .line 43
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    if-ne p1, p0, :cond_6

    move v0, v5

    .line 135
    :goto_5
    return v0

    .line 127
    :cond_6
    if-nez p1, :cond_a

    move v0, v4

    goto :goto_5

    .line 128
    :cond_a
    instance-of v0, p1, Lfa;

    if-nez v0, :cond_10

    move v0, v4

    goto :goto_5

    .line 129
    :cond_10
    check-cast p1, Lfa;

    .line 131
    iget-object v0, p0, Lfa;->f:Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 132
    iget-object v0, p1, Lfa;->f:Ljava/lang/Object;

    if-eqz v0, :cond_28

    move v0, v4

    goto :goto_5

    .line 133
    :cond_1c
    iget-object v0, p0, Lfa;->f:Ljava/lang/Object;

    iget-object v1, p1, Lfa;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v4

    goto :goto_5

    .line 135
    :cond_28
    iget v0, p0, Lfa;->d:I

    iget v1, p1, Lfa;->d:I

    if-ne v0, v1, :cond_46

    iget v0, p0, Lfa;->e:I

    iget v1, p1, Lfa;->e:I

    if-ne v0, v1, :cond_46

    iget-wide v0, p0, Lfa;->c:J

    iget-wide v2, p1, Lfa;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    iget-wide v0, p0, Lfa;->b:J

    iget-wide v2, p1, Lfa;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    move v0, v5

    goto :goto_5

    :cond_46
    move v0, v4

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lfa;->f:Ljava/lang/Object;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 116
    :goto_5
    iget v1, p0, Lfa;->d:I

    xor-int/2addr v0, v1

    .line 117
    iget v1, p0, Lfa;->e:I

    add-int/2addr v0, v1

    .line 118
    iget-wide v1, p0, Lfa;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 119
    iget-wide v1, p0, Lfa;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 120
    return v0

    .line 115
    :cond_14
    iget-object v0, p0, Lfa;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lfa;->f:Ljava/lang/Object;

    if-nez v1, :cond_33

    .line 100
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_15
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lfa;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lfa;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_33
    iget-object v1, p0, Lfa;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
