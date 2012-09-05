.class abstract LK/bk;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)LK/bk;
.end method

.method public varargs a([Ljava/lang/Object;)LK/bk;
    .registers 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, LK/bk;->a(Ljava/lang/Object;)LK/bk;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method
