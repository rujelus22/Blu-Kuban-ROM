.class public Lo/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableList;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Lo/j;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Lo/I;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 43
    const-string v0, "PREPARE"

    const-string v1, "ACT"

    const-string v2, "SUCCESS"

    const-string v3, "NOTE"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lo/j;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(IIIIZLjava/lang/String;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lo/j;->b:I

    .line 109
    iput p2, p0, Lo/j;->c:I

    .line 110
    iput p3, p0, Lo/j;->d:I

    .line 111
    iput p4, p0, Lo/j;->e:I

    .line 112
    iput-boolean p5, p0, Lo/j;->f:Z

    .line 113
    iput-object p6, p0, Lo/j;->h:Ljava/lang/String;

    .line 114
    iput p7, p0, Lo/j;->i:I

    .line 115
    iput p8, p0, Lo/j;->k:I

    .line 116
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;D)Lo/j;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 129
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 130
    if-ltz v1, :cond_c

    if-lt v1, v6, :cond_e

    .line 131
    :cond_c
    const/4 v0, 0x0

    .line 149
    :goto_d
    return-object v0

    .line 134
    :cond_e
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    int-to-double v2, v0

    mul-double v9, v2, p1

    .line 137
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v3

    .line 139
    invoke-static {p0, v6}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    int-to-double v6, v0

    mul-double v11, v6, p1

    .line 141
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 144
    :goto_2e
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    const/4 v0, 0x7

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v7

    .line 147
    const/16 v0, 0x8

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v8

    .line 149
    new-instance v0, Lo/j;

    double-to-int v2, v9

    double-to-int v4, v11

    invoke-direct/range {v0 .. v8}, Lo/j;-><init>(IIIIZLjava/lang/String;II)V

    goto :goto_d

    .line 141
    :cond_46
    const/4 v5, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lo/j;->b:I

    return v0
.end method

.method a(Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lo/j;->j:Lo/I;

    .line 181
    return-void
.end method

.method a(Lo/j;)V
    .registers 3
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lo/j;->g:Lo/j;

    .line 244
    if-nez p1, :cond_7

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/j;->f:Z

    .line 247
    :cond_7
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lo/j;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lo/j;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lo/j;->e:I

    return v0
.end method

.method public e()Lo/I;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lo/j;->j:Lo/I;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lo/j;->f:Z

    return v0
.end method

.method public g()Lo/j;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lo/j;->g:Lo/j;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lo/j;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lo/j;->h:Ljava/lang/String;

    .line 258
    :goto_6
    return-object v0

    .line 255
    :cond_7
    iget v0, p0, Lo/j;->i:I

    if-ltz v0, :cond_2c

    iget v0, p0, Lo/j;->i:I

    iget-object v1, p0, Lo/j;->j:Lo/I;

    invoke-virtual {v1}, Lo/I;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 256
    iget-object v0, p0, Lo/j;->j:Lo/I;

    invoke-virtual {v0}, Lo/I;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo/j;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/L;

    invoke-virtual {v0}, Lo/L;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 258
    :cond_2c
    iget-object v0, p0, Lo/j;->j:Lo/I;

    invoke-virtual {v0}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v0

    goto :goto_6
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lo/j;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    iget v0, p0, Lo/j;->i:I

    if-ltz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public j()Li/l;
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lo/j;->k:I

    if-ltz v0, :cond_c

    .line 286
    new-instance v0, Li/s;

    iget v1, p0, Lo/j;->k:I

    invoke-direct {v0, v1}, Li/s;-><init>(I)V

    .line 288
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lo/j;->a:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lo/j;->b:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/j;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/j;->j:Lo/I;

    invoke-virtual {v1}, Lo/I;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
