.class public final Lja$f;
.super Lja$o;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja$o",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Byte;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/Byte;",
            ")V"
        }
    .end annotation

    .prologue
    .line 682
    invoke-direct {p0, p1, p2}, Lja$o;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 683
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lja$f;->h(Lfd;Lhc;)I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-le v0, v1, :cond_15

    :cond_c
    iget-object v0, p0, Lja$f;->m:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_15
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
