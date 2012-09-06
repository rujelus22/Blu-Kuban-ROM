.class public Lcom/estrongs/android/pop/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/pop/a/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/a/b;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/a/b;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/estrongs/android/pop/a/b;->a:I

    if-eq v1, v0, :cond_c

    iget v1, p0, Lcom/estrongs/android/pop/a/b;->a:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()Z
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/a/b;->a:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/a/b;->a:I

    return v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/a/b;->c()Z

    move-result v0

    return v0
.end method
