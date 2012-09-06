.class public abstract LaiR;
.super LaiS;
.source "ImmutableSortedSet.java"

# interfaces
.implements Lald;
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LaiS",
        "<TE;>;",
        "Lald",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final a:LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiR",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    invoke-static {}, LakG;->b()LakG;

    move-result-object v0

    sput-object v0, LaiR;->b:Ljava/util/Comparator;

    .line 95
    new-instance v0, Laim;

    sget-object v1, LaiR;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Laim;-><init>(Ljava/util/Comparator;)V

    sput-object v0, LaiR;->a:LaiR;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, LaiS;-><init>()V

    .line 567
    iput-object p1, p0, LaiR;->a:Ljava/util/Comparator;

    .line 568
    return-void
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 560
    .line 561
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static a()LaiR;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, LaiR;->a:LaiR;

    return-object v0
.end method

.method static a(Ljava/util/Comparator;)LaiR;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, LaiR;->b:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    invoke-static {}, LaiR;->a()LaiR;

    move-result-object v0

    .line 108
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Laim;

    invoke-direct {v0, p0}, Laim;-><init>(Ljava/util/Comparator;)V

    goto :goto_c
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, LaiR;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, LaiR;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)LaiR;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaiR;->c(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LaiR;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 620
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, LaiR;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Ljava/lang/Object;Z)LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract a()Lalu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;)LaiR;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LaiR;->d(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method abstract b(Ljava/lang/Object;Z)LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation
.end method

.method b(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiR;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, LaiR;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, LafQ;->a(Z)V

    .line 628
    invoke-virtual {p0, p1, p2, p3, p4}, LaiR;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0

    .line 627
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method c(Ljava/lang/Object;Z)LaiR;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LaiR;->a(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, LaiR;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method d(Ljava/lang/Object;Z)LaiR;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "LaiR",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, LaiR;->b(Ljava/lang/Object;Z)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, LaiR;->a(Ljava/lang/Object;)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, LaiR;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, LaiR;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, LaiR;->b(Ljava/lang/Object;)LaiR;

    move-result-object v0

    return-object v0
.end method
