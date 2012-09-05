.class public abstract LaV/f;
.super Ljava/lang/Object;

# interfaces
.implements LaV/o;


# instance fields
.field protected volatile a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaV/f;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LaV/f;->a:Z

    return-void
.end method

.method public static a(II)LaJ/B;
    .registers 3

    invoke-static {p0, p1}, LaV/f;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, LaJ/B;

    invoke-direct {v0, p0, p1}, LaJ/B;-><init>(II)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static b(II)Z
    .registers 3

    const v0, 0xbebc200

    if-eq p0, v0, :cond_9

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, LaV/f;->b:I

    return-void
.end method

.method protected a(LaV/r;)V
    .registers 4

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {p0}, LaV/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, LaV/n;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaV/n;->a(LaV/r;Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "o"

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaV/f;->a:Z

    return v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LaV/f;->a:Z

    return-void
.end method

.method public g()I
    .registers 2

    iget v0, p0, LaV/f;->b:I

    return v0
.end method
