.class public final LaV;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LaY;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaY;LaY;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    iget v0, p1, LaY;->a:I

    iget v1, p2, LaY;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    check-cast p1, LaY;

    check-cast p2, LaY;

    invoke-virtual {p0, p1, p2}, LaV;->a(LaY;LaY;)I

    move-result v0

    return v0
.end method
