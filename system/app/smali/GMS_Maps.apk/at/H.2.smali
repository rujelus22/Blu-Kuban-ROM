.class public Lat/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lat/B;

.field private final b:Lat/Y;

.field private final c:I

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Lat/B;Lat/Y;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lat/B;Lat/Y;IZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lat/H;->a:Lat/B;

    .line 39
    iput-object p2, p0, Lat/H;->b:Lat/Y;

    .line 40
    iput p3, p0, Lat/H;->c:I

    .line 41
    iput-boolean p4, p0, Lat/H;->d:Z

    .line 42
    iput-boolean p5, p0, Lat/H;->e:Z

    .line 50
    return-void
.end method

.method public static i()Lat/H;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Lat/H;

    new-instance v1, Lat/B;

    invoke-direct {v1, v3, v3}, Lat/B;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v2}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    return-object v0
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lat/H;->a:Lat/B;

    return-object v0
.end method

.method public a(I)Lat/H;
    .registers 8
    .parameter

    .prologue
    .line 118
    new-instance v0, Lat/H;

    iget-object v1, p0, Lat/H;->a:Lat/B;

    iget-object v2, p0, Lat/H;->b:Lat/Y;

    iget-boolean v4, p0, Lat/H;->d:Z

    iget-boolean v5, p0, Lat/H;->e:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public a(Lat/B;)Lat/H;
    .registers 8
    .parameter

    .prologue
    .line 96
    new-instance v0, Lat/H;

    iget-object v2, p0, Lat/H;->b:Lat/Y;

    iget v3, p0, Lat/H;->c:I

    iget-boolean v4, p0, Lat/H;->d:Z

    iget-boolean v5, p0, Lat/H;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public a(Lat/Y;)Lat/H;
    .registers 8
    .parameter

    .prologue
    .line 107
    new-instance v0, Lat/H;

    iget-object v1, p0, Lat/H;->a:Lat/B;

    iget v3, p0, Lat/H;->c:I

    iget-boolean v4, p0, Lat/H;->d:Z

    iget-boolean v5, p0, Lat/H;->e:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public a(Z)Lat/H;
    .registers 8
    .parameter

    .prologue
    .line 130
    new-instance v0, Lat/H;

    iget-object v1, p0, Lat/H;->a:Lat/B;

    iget-object v2, p0, Lat/H;->b:Lat/Y;

    iget v3, p0, Lat/H;->c:I

    iget-boolean v5, p0, Lat/H;->e:Z

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public b(Z)Lat/H;
    .registers 8
    .parameter

    .prologue
    .line 134
    new-instance v0, Lat/H;

    iget-object v1, p0, Lat/H;->a:Lat/B;

    iget-object v2, p0, Lat/H;->b:Lat/Y;

    iget v3, p0, Lat/H;->c:I

    iget-boolean v4, p0, Lat/H;->d:Z

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public b()Lat/Y;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lat/H;->b:Lat/Y;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lat/H;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lat/H;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lat/H;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lat/H;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lat/H;->d:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lat/H;->e:Z

    return v0
.end method
