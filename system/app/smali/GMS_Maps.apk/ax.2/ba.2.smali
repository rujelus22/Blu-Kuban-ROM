.class public Lax/ba;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lax/ba;)I
    .registers 2

    iget v0, p0, Lax/ba;->b:I

    return v0
.end method

.method static synthetic a(Lax/ba;I)I
    .registers 2

    iput p1, p0, Lax/ba;->a:I

    return p1
.end method

.method static synthetic b(Lax/ba;)I
    .registers 2

    iget v0, p0, Lax/ba;->a:I

    return v0
.end method

.method static synthetic b(Lax/ba;I)I
    .registers 2

    iput p1, p0, Lax/ba;->b:I

    return p1
.end method
