.class public LAX;
.super Ljava/lang/Object;
.source "DocosStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LAX;->a:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic a(LAX;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LAX;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LAX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, LAY;

    invoke-direct {v0, p0}, LAY;-><init>(LAX;)V

    return-object v0
.end method

.method public a(LBj;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    instance-of v1, p1, LAX;

    if-eqz v1, :cond_10

    .line 55
    check-cast p1, LAX;

    .line 56
    iget-object v1, p0, LAX;->a:[Ljava/lang/String;

    if-nez v1, :cond_11

    .line 57
    iget-object v1, p1, LAX;->a:[Ljava/lang/String;

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 69
    :cond_10
    :goto_10
    return v0

    .line 59
    :cond_11
    iget-object v1, p0, LAX;->a:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p1, LAX;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_10

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v1, p0, LAX;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    iget-object v2, p1, LAX;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10
.end method
