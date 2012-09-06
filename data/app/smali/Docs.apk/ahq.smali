.class final Lahq;
.super Lahf;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lahf",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lahf;-><init>(Ljava/lang/Object;)V

    .line 1829
    iput p2, p0, Lahq;->a:I

    .line 1830
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1834
    iget v0, p0, Lahq;->a:I

    return v0
.end method
