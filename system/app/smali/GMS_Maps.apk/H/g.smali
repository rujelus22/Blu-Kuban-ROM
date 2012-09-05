.class public LH/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, LH/g;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LH/g;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LH/g;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, LH/g;->b:I

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, LH/g;->c:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, LH/g;->c:Z

    return v0
.end method
