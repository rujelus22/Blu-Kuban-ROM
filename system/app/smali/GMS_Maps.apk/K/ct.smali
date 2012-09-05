.class final LK/ct;
.super LK/bv;


# instance fields
.field final transient b:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .registers 5

    invoke-direct {p0, p1}, LK/bv;-><init>([Ljava/lang/Object;)V

    iput-object p3, p0, LK/ct;->b:[Ljava/lang/Object;

    iput p4, p0, LK/ct;->d:I

    iput p2, p0, LK/ct;->e:I

    return-void
.end method


# virtual methods
.method c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, LK/bg;->a(I)I

    move-result v0

    :goto_d
    iget-object v2, p0, LK/ct;->b:[Ljava/lang/Object;

    iget v3, p0, LK/ct;->d:I

    and-int/2addr v3, v0

    aget-object v2, v2, v3

    if-nez v2, :cond_18

    move v0, v1

    goto :goto_4

    :cond_18
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    goto :goto_4

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, LK/ct;->e:I

    return v0
.end method
