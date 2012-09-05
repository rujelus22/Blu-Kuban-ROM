.class final Lie$j;
.super Lie$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lie$a",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lie$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lie$j;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_10
    invoke-virtual {p2}, Lhc;->d()Lmh;

    move-result-object v0

    invoke-virtual {v0}, Lmh;->a()[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    :goto_1a
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v3

    sget-object v4, Lfg;->END_ARRAY:Lfg;

    if-eq v3, v4, :cond_3b

    sget-object v4, Lfg;->VALUE_NULL:Lfg;

    if-ne v3, v4, :cond_36

    const/4 v3, 0x0

    :goto_27
    array-length v4, v2

    if-lt v1, v4, :cond_30

    invoke-virtual {v0, v2}, Lmh;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    :cond_30
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1a

    :cond_36
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :cond_3b
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lmh;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Lhc;->a(Lmh;)V

    return-object p0
.end method
