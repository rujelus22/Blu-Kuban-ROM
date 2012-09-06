.class public LZZ;
.super Ljava/lang/Object;
.source "StringPartitionTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, LZZ;->a:[Ljava/lang/String;

    .line 61
    iget-object v0, p0, LZZ;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, LafQ;->a(Z)V

    .line 62
    iget-object v0, p0, LZZ;->a:[Ljava/lang/String;

    array-length v2, v0

    :goto_19
    if-ge v1, v2, :cond_25

    aget-object v3, v0, v1

    .line 63
    invoke-static {v3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    move v0, v1

    .line 61
    goto :goto_13

    .line 65
    :cond_25
    iput-object p2, p0, LZZ;->a:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)LZZ;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;[",
            "Ljava/lang/String;",
            ")",
            "LZZ",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, LZZ;

    invoke-direct {v0, p1, p0}, LZZ;-><init>([Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
