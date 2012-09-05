.class public final Lku$b;
.super Lku$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku$a",
        "<[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 350
    const-class v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lku$a;-><init>(Ljava/lang/Class;Lhu;)V

    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 2
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
    .line 359
    return-object p0
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
    .line 346
    check-cast p1, [Z

    const/4 v0, 0x0

    array-length v1, p1

    :goto_4
    if-ge v0, v1, :cond_e

    aget-boolean v2, p1, v0

    invoke-virtual {p2, v2}, Lez;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
