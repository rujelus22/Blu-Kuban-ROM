.class final Lajc;
.super Lalu;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field a:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lajc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lalu;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 1091
    iget-boolean v0, p0, Lajc;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1095
    iget-boolean v0, p0, Lajc;->a:Z

    if-eqz v0, :cond_a

    .line 1096
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1098
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajc;->a:Z

    .line 1099
    iget-object v0, p0, Lajc;->a:Ljava/lang/Object;

    return-object v0
.end method
