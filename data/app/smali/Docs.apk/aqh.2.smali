.class public Laqh;
.super Ljava/lang/Object;
.source "DefaultBindingScopingVisitor.java"

# interfaces
.implements Laqd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laqd",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Laqh;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(LanG;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanG;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Laqh;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TV;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Laqh;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Laqh;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
