.class public Lcom/google/googlenav/ui/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aG;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Lad/b;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, p1, v0, v0}, Lcom/google/googlenav/ui/aE;-><init>(Lad/b;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lad/b;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aE;->f:I

    .line 45
    const v0, -0x57ffaf01

    iput v0, p0, Lcom/google/googlenav/ui/aE;->g:I

    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    .line 67
    iput p2, p0, Lcom/google/googlenav/ui/aE;->d:I

    .line 68
    iput p3, p0, Lcom/google/googlenav/ui/aE;->e:I

    .line 69
    return-void
.end method

.method private static b()I
    .registers 2

    .prologue
    .line 111
    sget v0, Lcom/google/googlenav/ui/aE;->a:I

    if-nez v0, :cond_f

    .line 112
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/aE;->a:I

    .line 114
    :cond_f
    sget v0, Lcom/google/googlenav/ui/aE;->a:I

    return v0
.end method

.method public static b(Lat/Y;)I
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lat/Y;->a()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/google/googlenav/ui/aE;->b()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-static {}, Lcom/google/googlenav/ui/aE;->e()I

    move-result v0

    goto :goto_c
.end method

.method private static e()I
    .registers 2

    .prologue
    .line 118
    sget v0, Lcom/google/googlenav/ui/aE;->b:I

    if-nez v0, :cond_f

    .line 119
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/aE;->b:I

    .line 121
    :cond_f
    sget v0, Lcom/google/googlenav/ui/aE;->b:I

    return v0
.end method


# virtual methods
.method public a(Lat/Y;)I
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/googlenav/ui/aE;->b(Lat/Y;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/google/googlenav/ui/aE;->f:I

    .line 49
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->v()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/google/googlenav/ui/aE;->g:I

    .line 140
    return-void
.end method

.method public c()Ln/B;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->ae()I

    move-result v0

    if-nez v0, :cond_a

    .line 74
    const/4 v0, 0x0

    .line 87
    :goto_9
    return-object v0

    .line 81
    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/aE;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    .line 87
    :goto_16
    invoke-virtual {v0}, Lad/t;->h()Ln/B;

    move-result-object v0

    goto :goto_9

    .line 84
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    iget v1, p0, Lcom/google/googlenav/ui/aE;->d:I

    invoke-virtual {v0, v1}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    goto :goto_16
.end method

.method public d()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlenav/ui/aE;->f:I

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aE;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aE;->j()[Lat/B;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->K()I

    move-result v0

    return v0
.end method

.method public j()[Lat/B;
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->c:Lad/b;

    iget v1, p0, Lcom/google/googlenav/ui/aE;->d:I

    iget v2, p0, Lcom/google/googlenav/ui/aE;->e:I

    invoke-virtual {v0, v1, v2}, Lad/b;->a(II)[Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/googlenav/ui/aE;->g:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 151
    const/4 v0, -0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    const-string v0, "directions"

    return-object v0
.end method

.method public o()[[Lat/B;
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    check-cast v0, [[Lat/B;

    return-object v0
.end method
