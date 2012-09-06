.class public abstract LakG;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LakG;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "LakG",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, LakE;->a:LakE;

    return-object v0
.end method


# virtual methods
.method public a()LakG;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "LakG",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, LakV;

    invoke-direct {v0, p0}, LakV;-><init>(LakG;)V

    return-object v0
.end method

.method public a(LafH;)LakG;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "LafH",
            "<TF;+TT;>;)",
            "LakG",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, LahY;

    invoke-direct {v0, p1, p0}, LahY;-><init>(LafH;LakG;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
