.class public final Lku$d;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 465
    const-class v0, [C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    return-void
.end method

.method private static a(Lez;[C)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_b

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lez;->a([CII)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 504
    :cond_b
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, [C

    sget-object v0, Lhq$a;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lhq$a;

    invoke-virtual {p3, v0}, Lhs;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lez;->b()V

    invoke-static {p2, p1}, Lku$d;->a(Lez;[C)V

    invoke-virtual {p2}, Lez;->c()V

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lez;->a([CII)V

    goto :goto_13
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, [C

    sget-object v0, Lhq$a;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lhq$a;

    invoke-virtual {p3, v0}, Lhs;->a(Lhq$a;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p4, p1, p2}, Lhu;->c(Ljava/lang/Object;Lez;)V

    invoke-static {p2, p1}, Lku$d;->a(Lez;[C)V

    invoke-virtual {p4, p2}, Lhu;->c(Lez;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p4, p1, p2}, Lhu;->a(Ljava/lang/Object;Lez;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lez;->a([CII)V

    invoke-virtual {p4, p2}, Lhu;->a(Lez;)V

    goto :goto_13
.end method
