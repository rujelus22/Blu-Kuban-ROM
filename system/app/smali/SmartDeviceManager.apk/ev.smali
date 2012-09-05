.class public final Lev;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field public final a:[C

.field final b:Ljava/lang/String;

.field public final c:Z

.field public final d:C

.field public final e:I

.field private final f:[I

.field private final g:[B


# direct methods
.method public constructor <init>(Lev;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 147
    iget-boolean v3, p1, Lev;->c:Z

    iget-char v4, p1, Lev;->d:C

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lev;-><init>(Lev;Ljava/lang/String;ZCI)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lev;Ljava/lang/String;ZCI)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lev;->f:[I

    .line 65
    new-array v0, v1, [C

    iput-object v0, p0, Lev;->a:[C

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lev;->g:[B

    .line 157
    iput-object p2, p0, Lev;->b:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lev;->g:[B

    .line 159
    iget-object v1, p0, Lev;->g:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v0, p1, Lev;->a:[C

    .line 161
    iget-object v1, p0, Lev;->a:[C

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v0, p1, Lev;->f:[I

    .line 163
    iget-object v1, p0, Lev;->f:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-boolean p3, p0, Lev;->c:Z

    .line 166
    iput-char p4, p0, Lev;->d:C

    .line 167
    iput p5, p0, Lev;->e:I

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lev;->f:[I

    .line 65
    new-array v0, v1, [C

    iput-object v0, p0, Lev;->a:[C

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lev;->g:[B

    .line 112
    iput-object p1, p0, Lev;->b:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lev;->c:Z

    .line 114
    iput-char p4, p0, Lev;->d:C

    .line 115
    iput p5, p0, Lev;->e:I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 121
    if-eq v0, v1, :cond_41

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_41
    iget-object v1, p0, Lev;->a:[C

    invoke-virtual {p2, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    iget-object v1, p0, Lev;->f:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v1, v3

    .line 128
    :goto_4d
    if-ge v1, v0, :cond_5f

    .line 129
    iget-object v2, p0, Lev;->a:[C

    aget-char v2, v2, v1

    .line 130
    iget-object v3, p0, Lev;->g:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 131
    iget-object v3, p0, Lev;->f:[I

    aput v1, v3, v2

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 135
    :cond_5f
    if-eqz p3, :cond_66

    .line 136
    iget-object v0, p0, Lev;->f:[I

    const/4 v1, -0x2

    aput v1, v0, p4

    .line 138
    :cond_66
    return-void
.end method


# virtual methods
.method public final a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-char v0, p0, Lev;->d:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b(C)I
    .registers 3
    .parameter

    .prologue
    .line 197
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lev;->f:[I

    aget v0, v0, p1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lev;->b:Ljava/lang/String;

    return-object v0
.end method
