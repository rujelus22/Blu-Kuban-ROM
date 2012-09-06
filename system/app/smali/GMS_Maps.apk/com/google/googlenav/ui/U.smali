.class public Lcom/google/googlenav/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lcom/google/googlenav/ui/u;


# instance fields
.field private a:LS/e;

.field private b:LS/e;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(LS/e;II)Lcom/google/googlenav/ui/u;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 130
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/u;->a(LS/e;IIIIII)Lcom/google/googlenav/ui/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(LS/e;IIIIII)Lcom/google/googlenav/ui/u;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/google/googlenav/ui/u;->i:Lcom/google/googlenav/ui/u;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Lcom/google/googlenav/ui/u;

    invoke-direct {v0}, Lcom/google/googlenav/ui/u;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/u;->i:Lcom/google/googlenav/ui/u;

    .line 119
    :cond_b
    sget-object v0, Lcom/google/googlenav/ui/u;->i:Lcom/google/googlenav/ui/u;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/u;->b(LS/e;IIIIII)V

    .line 121
    sget-object v0, Lcom/google/googlenav/ui/u;->i:Lcom/google/googlenav/ui/u;

    return-object v0
.end method

.method public static b(LS/e;II)Lcom/google/googlenav/ui/u;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 140
    new-instance v0, Lcom/google/googlenav/ui/u;

    invoke-direct {v0}, Lcom/google/googlenav/ui/u;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, p1

    move v7, p2

    .line 141
    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/u;->b(LS/e;IIIIII)V

    .line 142
    return-object v0
.end method

.method private b(LS/e;IIIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput p2, p0, Lcom/google/googlenav/ui/u;->c:I

    .line 65
    iput p3, p0, Lcom/google/googlenav/ui/u;->d:I

    .line 66
    iput p4, p0, Lcom/google/googlenav/ui/u;->e:I

    .line 67
    iput p5, p0, Lcom/google/googlenav/ui/u;->f:I

    .line 68
    iput p6, p0, Lcom/google/googlenav/ui/u;->g:I

    .line 69
    iput p7, p0, Lcom/google/googlenav/ui/u;->h:I

    .line 70
    iput-object p1, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    .line 72
    if-nez p4, :cond_19

    if-nez p5, :cond_19

    if-ne p6, p2, :cond_19

    if-ne p7, p3, :cond_19

    .line 75
    iput-object p1, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    .line 86
    :goto_18
    return-void

    .line 77
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    instance-of v0, v0, LS/q;

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    check-cast v0, LS/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, LS/q;->a(LS/e;IIII)V

    goto :goto_18

    .line 82
    :cond_2d
    new-instance v0, LS/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, LS/q;-><init>(LS/e;IIII)V

    iput-object v0, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    goto :goto_18
.end method


# virtual methods
.method public a()LS/e;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    return-object v0
.end method

.method public b()LS/e;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/google/googlenav/ui/u;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/google/googlenav/ui/u;->f:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/google/googlenav/ui/u;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/google/googlenav/ui/u;->h:I

    return v0
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->b:LS/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public h()V
    .registers 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    const/high16 v1, -0x100

    invoke-interface {v0, v1}, LS/e;->a(I)V

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/u;->a:LS/e;

    iget v1, p0, Lcom/google/googlenav/ui/u;->e:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/googlenav/ui/u;->f:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/googlenav/ui/u;->g:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/google/googlenav/ui/u;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, LS/e;->c(IIII)V

    .line 216
    return-void
.end method
