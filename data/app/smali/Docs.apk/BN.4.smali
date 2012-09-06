.class LBN;
.super Ljava/lang/Object;
.source "OffsetTreeNode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LBI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBJ;


# direct methods
.method constructor <init>(LBJ;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, LBN;->a:LBJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBI;LBI;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-interface {p1}, LBI;->d()I

    move-result v0

    invoke-interface {p2}, LBI;->c()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 230
    const/4 v0, -0x1

    .line 234
    :goto_b
    return v0

    .line 231
    :cond_c
    invoke-interface {p1}, LBI;->c()I

    move-result v0

    invoke-interface {p2}, LBI;->d()I

    move-result v1

    if-lt v0, v1, :cond_18

    .line 232
    const/4 v0, 0x1

    goto :goto_b

    .line 234
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    check-cast p1, LBI;

    check-cast p2, LBI;

    invoke-virtual {p0, p1, p2}, LBN;->a(LBI;LBI;)I

    move-result v0

    return v0
.end method
