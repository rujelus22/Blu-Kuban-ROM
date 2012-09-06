.class public abstract LyQ;
.super Ljava/lang/Object;
.source "ChildFactory.java"

# interfaces
.implements LyP;


# instance fields
.field a:I

.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lzr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lzr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, LyQ;->a:I

    .line 56
    iput-object p2, p0, LyQ;->a:Ljava/lang/Class;

    .line 57
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, LyQ;->a:I

    return v0
.end method

.method public a(Lzr;)Z
    .registers 4
    .parameter

    .prologue
    .line 66
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LyQ;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
