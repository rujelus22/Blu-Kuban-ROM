.class public Li/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private d:J

.field private e:J

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IJJJLjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Li/F;->a:Ljava/lang/String;

    .line 98
    iput p2, p0, Li/F;->b:I

    .line 99
    iput-wide p3, p0, Li/F;->c:J

    .line 100
    iput-wide p5, p0, Li/F;->d:J

    .line 101
    iput-wide p7, p0, Li/F;->e:J

    .line 102
    iput-object p9, p0, Li/F;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Li/F;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x10

    .line 106
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 107
    array-length v0, v7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    .line 108
    const-string v0, "CannedSpeechManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse voice bundle description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_25
    return-object v0

    :cond_26
    new-instance v0, Li/F;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-static {v3, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/4 v5, 0x3

    aget-object v5, v7, v5

    invoke-static {v5, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-static {v7, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Li/F;-><init>(Ljava/lang/String;IJJJLjava/lang/String;)V

    goto :goto_25
.end method

.method public static a(Ljava/util/Locale;IJLjava/lang/String;)Li/F;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 123
    new-instance v0, Li/F;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v7, v5

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Li/F;-><init>(Ljava/lang/String;IJJJLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Li/F;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, Li/F;->c:J

    return-wide v0
.end method

.method public c()Z
    .registers 7

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Li/F;->e:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public d()Z
    .registers 7

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Li/F;->d:J

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public e()Ljava/io/File;
    .registers 6

    .prologue
    .line 158
    const-string v0, "."

    .line 159
    iget v1, p0, Li/F;->b:I

    packed-switch v1, :pswitch_data_32

    .line 168
    :goto_7
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Li/F;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Li/F;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Li/F;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 161
    :pswitch_2c
    const-string v0, ".i."

    goto :goto_7

    .line 164
    :pswitch_2f
    const-string v0, ".y."

    goto :goto_7

    .line 159
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method public f()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Li/F;->b:I

    return v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Li/F;->d:J

    .line 177
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Li/F;->e:J

    .line 181
    return-void
.end method

.method public i()Li/G;
    .registers 4

    .prologue
    .line 184
    new-instance v0, Li/G;

    iget-object v1, p0, Li/F;->a:Ljava/lang/String;

    iget v2, p0, Li/F;->b:I

    invoke-direct {v0, v1, v2}, Li/G;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    iget-object v1, p0, Li/F;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Li/F;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-wide v1, p0, Li/F;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-wide v1, p0, Li/F;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v1, p0, Li/F;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
