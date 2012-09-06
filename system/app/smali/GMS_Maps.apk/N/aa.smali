.class public final Ln/aa;
.super Ln/ab;
.source "SourceFile"


# instance fields
.field protected a:Ln/Q;

.field protected b:Ln/Q;

.field private volatile c:Ln/Q;

.field private volatile d:Ln/Q;


# direct methods
.method public constructor <init>(Ln/Q;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ln/ab;-><init>()V

    .line 21
    iput-object p1, p0, Ln/aa;->a:Ln/Q;

    .line 22
    iput-object p2, p0, Ln/aa;->b:Ln/Q;

    .line 23
    return-void
.end method

.method public static a(Ln/Q;I)Ln/aa;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Ln/Q;

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, Ln/Q;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    .line 117
    new-instance v1, Ln/Q;

    iget v2, p0, Ln/Q;->a:I

    add-int/2addr v2, p1

    iget v3, p0, Ln/Q;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    .line 118
    new-instance v2, Ln/aa;

    invoke-direct {v2, v0, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v2
.end method

.method public static a(Ln/Q;Ln/Q;)Ln/aa;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 92
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    if-ge v0, v1, :cond_24

    .line 93
    iget v1, p0, Ln/Q;->a:I

    .line 94
    iget v0, p1, Ln/Q;->a:I

    .line 99
    :goto_a
    iget v2, p0, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    if-ge v2, v3, :cond_29

    .line 100
    iget v3, p0, Ln/Q;->b:I

    .line 101
    iget v2, p1, Ln/Q;->b:I

    .line 106
    :goto_14
    new-instance v4, Ln/aa;

    new-instance v5, Ln/Q;

    invoke-direct {v5, v1, v3}, Ln/Q;-><init>(II)V

    new-instance v1, Ln/Q;

    invoke-direct {v1, v0, v2}, Ln/Q;-><init>(II)V

    invoke-direct {v4, v5, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v4

    .line 96
    :cond_24
    iget v1, p1, Ln/Q;->a:I

    .line 97
    iget v0, p0, Ln/Q;->a:I

    goto :goto_a

    .line 103
    :cond_29
    iget v3, p1, Ln/Q;->b:I

    .line 104
    iget v2, p0, Ln/Q;->b:I

    goto :goto_14
.end method

.method public static a(Ln/U;)Ln/aa;
    .registers 8
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln/U;->a(I)Ln/Q;

    move-result-object v5

    .line 31
    iget v2, v5, Ln/Q;->a:I

    .line 33
    iget v1, v5, Ln/Q;->b:I

    .line 36
    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_d
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v6

    if-ge v0, v6, :cond_31

    .line 37
    invoke-virtual {p0, v0, v5}, Ln/U;->a(ILn/Q;)V

    .line 38
    iget v6, v5, Ln/Q;->a:I

    if-ge v6, v4, :cond_1c

    .line 39
    iget v4, v5, Ln/Q;->a:I

    .line 41
    :cond_1c
    iget v6, v5, Ln/Q;->a:I

    if-le v6, v3, :cond_22

    .line 42
    iget v3, v5, Ln/Q;->a:I

    .line 44
    :cond_22
    iget v6, v5, Ln/Q;->b:I

    if-ge v6, v2, :cond_28

    .line 45
    iget v2, v5, Ln/Q;->b:I

    .line 47
    :cond_28
    iget v6, v5, Ln/Q;->b:I

    if-le v6, v1, :cond_2e

    .line 48
    iget v1, v5, Ln/Q;->b:I

    .line 36
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 52
    :cond_31
    invoke-virtual {v5, v4, v2}, Ln/Q;->d(II)V

    .line 53
    new-instance v0, Ln/Q;

    invoke-direct {v0, v3, v1}, Ln/Q;-><init>(II)V

    .line 54
    new-instance v1, Ln/aa;

    invoke-direct {v1, v5, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v1
.end method

.method public static a([Ln/Q;)Ln/aa;
    .registers 8
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 62
    iget v2, v0, Ln/Q;->a:I

    .line 64
    iget v1, v0, Ln/Q;->b:I

    .line 67
    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_b
    array-length v5, p0

    if-ge v0, v5, :cond_2b

    .line 68
    aget-object v5, p0, v0

    .line 69
    iget v6, v5, Ln/Q;->a:I

    if-ge v6, v4, :cond_16

    .line 70
    iget v4, v5, Ln/Q;->a:I

    .line 72
    :cond_16
    iget v6, v5, Ln/Q;->a:I

    if-le v6, v3, :cond_1c

    .line 73
    iget v3, v5, Ln/Q;->a:I

    .line 75
    :cond_1c
    iget v6, v5, Ln/Q;->b:I

    if-ge v6, v2, :cond_22

    .line 76
    iget v2, v5, Ln/Q;->b:I

    .line 78
    :cond_22
    iget v6, v5, Ln/Q;->b:I

    if-le v6, v1, :cond_28

    .line 79
    iget v1, v5, Ln/Q;->b:I

    .line 67
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 82
    :cond_2b
    new-instance v0, Ln/aa;

    new-instance v5, Ln/Q;

    invoke-direct {v5, v4, v2}, Ln/Q;-><init>(II)V

    new-instance v2, Ln/Q;

    invoke-direct {v2, v3, v1}, Ln/Q;-><init>(II)V

    invoke-direct {v0, v5, v2}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ln/Q;
    .registers 5
    .parameter

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_3c

    .line 195
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 184
    :pswitch_9
    iget-object v0, p0, Ln/aa;->c:Ln/Q;

    if-nez v0, :cond_1c

    .line 185
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aa;->c:Ln/Q;

    .line 187
    :cond_1c
    iget-object v0, p0, Ln/aa;->c:Ln/Q;

    .line 194
    :goto_1e
    return-object v0

    .line 188
    :pswitch_1f
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    goto :goto_1e

    .line 190
    :pswitch_22
    iget-object v0, p0, Ln/aa;->d:Ln/Q;

    if-nez v0, :cond_35

    .line 191
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p0, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aa;->d:Ln/Q;

    .line 193
    :cond_35
    iget-object v0, p0, Ln/aa;->d:Ln/Q;

    goto :goto_1e

    .line 194
    :pswitch_38
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    goto :goto_1e

    .line 182
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
        :pswitch_22
        :pswitch_38
    .end packed-switch
.end method

.method public a()Ln/aa;
    .registers 1

    .prologue
    .line 149
    return-object p0
.end method

.method public a(Ln/aa;)Ln/aa;
    .registers 7
    .parameter

    .prologue
    .line 208
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    iget-object v3, p1, Ln/aa;->a:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    .line 210
    new-instance v1, Ln/Q;

    iget-object v2, p0, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    iget-object v3, p1, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    iget-object v4, p1, Ln/aa;->b:Ln/Q;

    iget v4, v4, Ln/Q;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    .line 212
    new-instance v2, Ln/aa;

    invoke-direct {v2, v0, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v2
.end method

.method public a(Ln/Q;)Z
    .registers 4
    .parameter

    .prologue
    .line 143
    iget v0, p1, Ln/Q;->a:I

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    if-lt v0, v1, :cond_22

    iget v0, p1, Ln/Q;->a:I

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    if-gt v0, v1, :cond_22

    iget v0, p1, Ln/Q;->b:I

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-lt v0, v1, :cond_22

    iget v0, p1, Ln/Q;->b:I

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-gt v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(Ln/ab;)Z
    .registers 4
    .parameter

    .prologue
    .line 163
    instance-of v0, p1, Ln/aa;

    if-eqz v0, :cond_32

    .line 164
    check-cast p1, Ln/aa;

    .line 165
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v1, p1, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    if-gt v0, v1, :cond_30

    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    iget v0, v0, Ln/Q;->b:I

    iget-object v1, p1, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-gt v0, v1, :cond_30

    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v1, p1, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->b:I

    iget-object v1, p1, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-lt v0, v1, :cond_30

    const/4 v0, 0x1

    .line 171
    :goto_2f
    return v0

    .line 165
    :cond_30
    const/4 v0, 0x0

    goto :goto_2f

    .line 171
    :cond_32
    invoke-super {p0, p1}, Ln/ab;->a(Ln/ab;)Z

    move-result v0

    goto :goto_2f
.end method

.method public b()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x4

    return v0
.end method

.method public b(I)Ln/aa;
    .registers 7
    .parameter

    .prologue
    .line 251
    if-gez p1, :cond_1b

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1b
    new-instance v0, Ln/aa;

    new-instance v1, Ln/Q;

    iget-object v2, p0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ln/aa;->a:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    new-instance v2, Ln/Q;

    iget-object v3, p0, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, Ln/aa;->b:Ln/Q;

    iget v4, v4, Ln/Q;->b:I

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Ln/Q;-><init>(II)V

    invoke-direct {v0, v1, v2}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v0
.end method

.method b(Ln/aa;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Ln/Q;->a:I

    .line 225
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Ln/Q;->b:I

    .line 226
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Ln/Q;->a:I

    .line 227
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Ln/Q;->b:I

    .line 228
    iput-object v3, p0, Ln/aa;->c:Ln/Q;

    .line 229
    iput-object v3, p0, Ln/aa;->d:Ln/Q;

    .line 230
    return-void
.end method

.method public b(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    .line 155
    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, v0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-gt v1, v2, :cond_2e

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v2, v0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    if-gt v1, v2, :cond_2e

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, v0, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-lt v1, v2, :cond_2e

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v0, v0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->b:I

    if-lt v1, v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public c()Ln/Q;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    return-object v0
.end method

.method public c(Ln/aa;)Ln/aa;
    .registers 7
    .parameter

    .prologue
    .line 237
    new-instance v1, Ln/Q;

    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    iget-object v3, p1, Ln/aa;->a:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ln/Q;-><init>(II)V

    .line 239
    new-instance v2, Ln/Q;

    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v3, p1, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    iget-object v4, p1, Ln/aa;->b:Ln/Q;

    iget v4, v4, Ln/Q;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v0, v3}, Ln/Q;-><init>(II)V

    .line 241
    iget v0, v1, Ln/Q;->a:I

    iget v3, v2, Ln/Q;->a:I

    if-gt v0, v3, :cond_46

    iget v0, v1, Ln/Q;->b:I

    iget v3, v2, Ln/Q;->b:I

    if-le v0, v3, :cond_48

    .line 242
    :cond_46
    const/4 v0, 0x0

    .line 244
    :goto_47
    return-object v0

    :cond_48
    new-instance v0, Ln/aa;

    invoke-direct {v0, v1, v2}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    goto :goto_47
.end method

.method public d()Ln/Q;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ln/aa;->a:Ln/Q;

    return-object v0
.end method

.method public e()Ln/Q;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    if-ne p0, p1, :cond_5

    .line 276
    :cond_4
    :goto_4
    return v0

    .line 272
    :cond_5
    instance-of v2, p1, Ln/aa;

    if-eqz v2, :cond_21

    .line 273
    check-cast p1, Ln/aa;

    .line 274
    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget-object v3, p0, Ln/aa;->b:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget-object v3, p0, Ln/aa;->a:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 276
    goto :goto_4
.end method

.method public f()Ln/Q;
    .registers 5

    .prologue
    .line 130
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p0, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    iget-object v3, p0, Ln/aa;->b:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    return-object v0
.end method

.method public g()I
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->b:I

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 261
    .line 263
    iget-object v0, p0, Ln/aa;->b:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 264
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aa;->a:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/aa;->b:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
