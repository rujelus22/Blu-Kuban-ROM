.class public final Lku$k;
.super Lku$a;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lku$a",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 299
    const-class v0, [Ljava/lang/String;

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
    .line 308
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
    .line 295
    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    if-lez v0, :cond_18

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    if-nez v2, :cond_12

    invoke-virtual {p2}, Lez;->f()V

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Lez;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_18
    return-void
.end method
