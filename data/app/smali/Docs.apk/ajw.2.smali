.class final Lajw;
.super Laiz;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Laiz",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lajp;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lajp;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lajp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    invoke-direct {p0, p1, p2}, Laiz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    iput-object p3, p0, Lajw;->a:Lajp;

    .line 750
    return-void
.end method
