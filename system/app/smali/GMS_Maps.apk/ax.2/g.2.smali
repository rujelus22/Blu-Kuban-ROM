.class public Lax/g;
.super Ljava/lang/Object;

# interfaces
.implements Lax/f;


# instance fields
.field protected final a:Lax/aI;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lax/aI;

    invoke-direct {v0}, Lax/aI;-><init>()V

    iput-object v0, p0, Lax/g;->a:Lax/aI;

    iput p1, p0, Lax/g;->b:I

    iput-boolean p2, p0, Lax/g;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lax/g;->a:Lax/aI;

    iget v1, p0, Lax/g;->b:I

    invoke-virtual {v0, v1}, Lax/aI;->c(I)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lax/g;->a:Lax/aI;

    iget v1, p0, Lax/g;->b:I

    invoke-virtual {v0, v1}, Lax/aI;->b(I)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-boolean v0, p0, Lax/g;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/g;->a:Lax/aI;

    iget v1, p0, Lax/g;->b:I

    invoke-virtual {v0, v1}, Lax/aI;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
