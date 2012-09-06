.class public Lam/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lam/m;


# direct methods
.method constructor <init>(IIILam/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lam/f;->a:I

    .line 154
    iput p2, p0, Lam/f;->b:I

    .line 155
    iput p3, p0, Lam/f;->c:I

    .line 156
    iput-object p4, p0, Lam/f;->d:Lam/m;

    .line 157
    return-void
.end method

.method static synthetic a(Lam/f;)I
    .registers 2
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lam/f;->a:I

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lam/f;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lam/f;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lam/f;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lam/f;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lam/f;->d:Lam/m;

    invoke-virtual {v0}, Lam/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lam/f;->d:Lam/m;

    invoke-virtual {v0}, Lam/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()LS/f;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lam/f;->d:Lam/m;

    invoke-virtual {v0}, Lam/m;->f()LS/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lam/m;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lam/f;->d:Lam/m;

    return-object v0
.end method

.method public i()J
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lam/f;->d:Lam/m;

    invoke-virtual {v0}, Lam/m;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lam/f;->d:Lam/m;

    invoke-virtual {v0}, Lam/m;->g()Z

    move-result v0

    return v0
.end method
