.class public final Lnm$b;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation


# static fields
.field private static final d:[Lfg;


# instance fields
.field protected a:Lnm$b;

.field protected b:J

.field protected final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 1170
    const/16 v0, 0x10

    new-array v0, v0, [Lfg;

    sput-object v0, Lnm$b;->d:[Lfg;

    .line 1171
    invoke-static {}, Lfg;->values()[Lfg;

    move-result-object v0

    .line 1172
    sget-object v1, Lnm$b;->d:[Lfg;

    const/16 v2, 0xf

    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lnm$b;->c:[Ljava/lang/Object;

    .line 1192
    return-void
.end method

.method private b(ILfg;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1238
    invoke-virtual {p2}, Lfg;->ordinal()I

    move-result v0

    int-to-long v0, v0

    .line 1242
    if-lez p1, :cond_a

    .line 1243
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1245
    :cond_a
    iget-wide v2, p0, Lnm$b;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lnm$b;->b:J

    .line 1246
    return-void
.end method

.method private b(ILfg;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1250
    iget-object v0, p0, Lnm$b;->c:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 1251
    invoke-virtual {p2}, Lfg;->ordinal()I

    move-result v0

    int-to-long v0, v0

    .line 1255
    if-lez p1, :cond_e

    .line 1256
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1258
    :cond_e
    iget-wide v2, p0, Lnm$b;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lnm$b;->b:J

    .line 1259
    return-void
.end method


# virtual methods
.method public final a(I)Lfg;
    .registers 5
    .parameter

    .prologue
    .line 1198
    iget-wide v0, p0, Lnm$b;->b:J

    .line 1199
    if-lez p1, :cond_7

    .line 1200
    shl-int/lit8 v2, p1, 0x2

    shr-long/2addr v0, v2

    .line 1202
    :cond_7
    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    .line 1203
    sget-object v1, Lnm$b;->d:[Lfg;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final a()Lnm$b;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lnm$b;->a:Lnm$b;

    return-object v0
.end method

.method public final a(ILfg;)Lnm$b;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1216
    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    .line 1217
    invoke-direct {p0, p1, p2}, Lnm$b;->b(ILfg;)V

    .line 1218
    const/4 v0, 0x0

    .line 1222
    :goto_8
    return-object v0

    .line 1220
    :cond_9
    new-instance v0, Lnm$b;

    invoke-direct {v0}, Lnm$b;-><init>()V

    iput-object v0, p0, Lnm$b;->a:Lnm$b;

    .line 1221
    iget-object v0, p0, Lnm$b;->a:Lnm$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lnm$b;->b(ILfg;)V

    .line 1222
    iget-object v0, p0, Lnm$b;->a:Lnm$b;

    goto :goto_8
.end method

.method public final a(ILfg;Ljava/lang/Object;)Lnm$b;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1227
    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    .line 1228
    invoke-direct {p0, p1, p2, p3}, Lnm$b;->b(ILfg;Ljava/lang/Object;)V

    .line 1229
    const/4 v0, 0x0

    .line 1233
    :goto_8
    return-object v0

    .line 1231
    :cond_9
    new-instance v0, Lnm$b;

    invoke-direct {v0}, Lnm$b;-><init>()V

    iput-object v0, p0, Lnm$b;->a:Lnm$b;

    .line 1232
    iget-object v0, p0, Lnm$b;->a:Lnm$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lnm$b;->b(ILfg;Ljava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lnm$b;->a:Lnm$b;

    goto :goto_8
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lnm$b;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
