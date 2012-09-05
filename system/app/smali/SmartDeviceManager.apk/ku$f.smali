.class public final Lku$f;
.super Lku$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku$a",
        "<[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lku$f;-><init>(Lhu;)V

    return-void
.end method

.method private constructor <init>(Lhu;)V
    .registers 3
    .parameter

    .prologue
    .line 586
    const-class v0, [F

    invoke-direct {p0, v0, p1}, Lku$a;-><init>(Ljava/lang/Class;Lhu;)V

    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu;",
            ")",
            "Lkz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lku$f;

    invoke-direct {v0, p1}, Lku$f;-><init>(Lhu;)V

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 7
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
    .line 581
    check-cast p1, [F

    const/4 v0, 0x0

    array-length v1, p1

    :goto_4
    if-ge v0, v1, :cond_e

    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lez;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
