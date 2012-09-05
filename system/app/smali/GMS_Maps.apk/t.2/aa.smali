.class public Lt/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/aa;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lt/aa;
    .registers 7

    new-instance v1, Lt/aa;

    invoke-direct {v1}, Lt/aa;-><init>()V

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_18

    iget-object v3, v1, Lt/aa;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lt/Z;->a(ILjava/io/DataInput;I)Lt/Z;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-object v1
.end method


# virtual methods
.method public a()Lt/Z;
    .registers 2

    invoke-static {}, Lt/Z;->a()Lt/Z;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lt/Z;
    .registers 3

    iget-object v0, p0, Lt/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    invoke-static {}, Lt/Z;->a()Lt/Z;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lt/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/Z;

    goto :goto_c
.end method
