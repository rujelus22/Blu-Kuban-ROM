.class public Lcom/google/googlenav/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/googlenav/cp;

.field private final b:Z

.field private final c:Lcom/google/googlenav/ca;

.field private final d:[Lcom/google/googlenav/ca;

.field private e:[Lcom/google/googlenav/cc;

.field private final f:[I

.field private final g:Lcom/google/googlenav/cm;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/cm;[Lcom/google/googlenav/cp;ZLcom/google/googlenav/ca;[I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p1, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    .line 1138
    iput-object p2, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    .line 1139
    iput-boolean p3, p0, Lcom/google/googlenav/cn;->b:Z

    .line 1140
    iput-object p4, p0, Lcom/google/googlenav/cn;->c:Lcom/google/googlenav/ca;

    .line 1141
    iput-object p5, p0, Lcom/google/googlenav/cn;->f:[I

    .line 1142
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ca;

    iput-object v0, p0, Lcom/google/googlenav/cn;->d:[Lcom/google/googlenav/ca;

    .line 1143
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ca;Lcom/google/googlenav/ce;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x6

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1076
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1085
    :goto_12
    new-instance v2, Lcom/google/googlenav/cm;

    invoke-direct {v2, v0, p3}, Lcom/google/googlenav/cm;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V

    iput-object v2, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    .line 1090
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/cp;

    iput-object v0, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    move v0, v1

    move v2, v1

    .line 1091
    :goto_23
    iget-object v4, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    array-length v4, v4

    if-ge v0, v4, :cond_56

    .line 1092
    iget-object v4, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    new-instance v5, Lcom/google/googlenav/cp;

    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/google/googlenav/cp;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cn;)V

    aput-object v5, v4, v0

    .line 1094
    iget-object v4, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/google/googlenav/cp;->a(Lcom/google/googlenav/cp;)Z

    move-result v4

    if-eqz v4, :cond_40

    move v2, v3

    .line 1091
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1077
    :cond_43
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz p3, :cond_54

    .line 1079
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/google/googlenav/ce;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_12

    .line 1082
    :cond_54
    const/4 v0, 0x0

    goto :goto_12

    .line 1098
    :cond_56
    iput-boolean v2, p0, Lcom/google/googlenav/cn;->b:Z

    .line 1100
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 1101
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/googlenav/cn;->f:[I

    move v0, v1

    .line 1102
    :goto_61
    if-ge v0, v2, :cond_6e

    .line 1103
    iget-object v3, p0, Lcom/google/googlenav/cn;->f:[I

    invoke-virtual {p1, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v4

    aput v4, v3, v0

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 1112
    :cond_6e
    new-array v0, v1, [Lcom/google/googlenav/ca;

    iput-object v0, p0, Lcom/google/googlenav/cn;->d:[Lcom/google/googlenav/ca;

    .line 1127
    iput-object p2, p0, Lcom/google/googlenav/cn;->c:Lcom/google/googlenav/ca;

    .line 1128
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/cn;)Lcom/google/googlenav/cm;
    .registers 2
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/cn;)[Lcom/google/googlenav/cp;
    .registers 2
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/cn;)Z
    .registers 2
    .parameter

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/google/googlenav/cn;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/cn;)[I
    .registers 2
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/googlenav/cn;->f:[I

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/google/googlenav/cd;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1181
    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/google/googlenav/cn;->b:Z

    if-nez v1, :cond_8

    .line 1199
    :cond_7
    :goto_7
    return-object v0

    .line 1186
    :cond_8
    iget-object v3, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 1187
    if-eqz p1, :cond_1d

    invoke-static {v1}, Lcom/google/googlenav/cp;->a(Lcom/google/googlenav/cp;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1186
    :cond_19
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 1193
    :cond_1d
    invoke-virtual {v1}, Lcom/google/googlenav/cp;->a()Lcom/google/googlenav/cd;

    move-result-object v1

    .line 1195
    if-eqz v1, :cond_19

    move-object v0, v1

    .line 1196
    goto :goto_7
.end method

.method public a(I)Lcom/google/googlenav/cp;
    .registers 3
    .parameter

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/cp;
    .registers 7
    .parameter

    .prologue
    .line 1252
    iget-object v2, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 1253
    invoke-virtual {v0}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1257
    :goto_13
    return-object v0

    .line 1252
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1257
    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/google/googlenav/cn;->b:Z

    return v0
.end method

.method public b(Z)J
    .registers 4
    .parameter

    .prologue
    .line 1207
    invoke-virtual {p0, p1}, Lcom/google/googlenav/cn;->a(Z)Lcom/google/googlenav/cd;

    move-result-object v0

    .line 1208
    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {v0}, Lcom/google/googlenav/cd;->f()J

    move-result-wide v0

    goto :goto_8
.end method

.method public b(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1273
    iget-object v3, p0, Lcom/google/googlenav/cn;->e:[Lcom/google/googlenav/cc;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_2d

    aget-object v0, v3, v2

    .line 1274
    invoke-virtual {v0}, Lcom/google/googlenav/cc;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cf;

    .line 1275
    invoke-virtual {v0}, Lcom/google/googlenav/cf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1276
    const/4 v0, 0x1

    .line 1280
    :goto_28
    return v0

    .line 1273
    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_2d
    move v0, v1

    .line 1280
    goto :goto_28
.end method

.method public b()[Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/googlenav/cn;->d:[Lcom/google/googlenav/ca;

    return-object v0
.end method

.method public c(Z)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/google/googlenav/cn;->a(Z)Lcom/google/googlenav/cd;

    move-result-object v0

    .line 1216
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/googlenav/cd;->b(Lcom/google/googlenav/cd;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()I
    .registers 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/googlenav/cn;->a:[Lcom/google/googlenav/cp;

    array-length v0, v0

    return v0
.end method

.method public d(Z)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1223
    invoke-virtual {p0, p1}, Lcom/google/googlenav/cn;->a(Z)Lcom/google/googlenav/cd;

    move-result-object v0

    .line 1224
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public e()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/googlenav/cn;->c:Lcom/google/googlenav/ca;

    return-object v0
.end method

.method public f()[Lcom/google/googlenav/cc;
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/google/googlenav/cn;->e:[Lcom/google/googlenav/cc;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .registers 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .registers 3

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->e()I

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->f()I

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->g()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/google/googlenav/cn;->g:Lcom/google/googlenav/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/cm;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
