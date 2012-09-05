.class public LaD/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:LaD/m;


# direct methods
.method constructor <init>(IIILaD/m;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LaD/f;->a:I

    iput p2, p0, LaD/f;->b:I

    iput p3, p0, LaD/f;->c:I

    iput-object p4, p0, LaD/f;->d:LaD/m;

    return-void
.end method

.method static synthetic a(LaD/f;)I
    .registers 2

    iget v0, p0, LaD/f;->a:I

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, LaD/f;->a:I

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

    iget v0, p0, LaD/f;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaD/f;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget v0, p0, LaD/f;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaD/f;->d:LaD/m;

    invoke-virtual {v0}, LaD/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaD/f;->d:LaD/m;

    invoke-virtual {v0}, LaD/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lah/f;
    .registers 2

    iget-object v0, p0, LaD/f;->d:LaD/m;

    invoke-virtual {v0}, LaD/m;->f()Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public h()LaD/m;
    .registers 2

    iget-object v0, p0, LaD/f;->d:LaD/m;

    return-object v0
.end method

.method public i()J
    .registers 3

    iget-object v0, p0, LaD/f;->d:LaD/m;

    invoke-virtual {v0}, LaD/m;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, LaD/f;->d:LaD/m;

    invoke-virtual {v0}, LaD/m;->g()Z

    move-result v0

    return v0
.end method
