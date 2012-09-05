.class public Lax/q;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lax/q;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lax/q;->a:I

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lax/q;->a:I

    return-void
.end method

.method public c()V
    .registers 3

    iget v0, p0, Lax/q;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    iput v0, p0, Lax/q;->a:I

    :cond_8
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lax/q;->a:I

    return-void
.end method
