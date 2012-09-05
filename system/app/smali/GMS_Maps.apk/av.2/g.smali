.class Lav/g;
.super Lav/l;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lav/l;-><init>()V

    iput p1, p0, Lav/g;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILav/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lav/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lav/g;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lav/g;

    iget v2, p0, Lav/g;->a:I

    iget v3, p1, Lav/g;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lav/g;->a:I

    return v0
.end method
