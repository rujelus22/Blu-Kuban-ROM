.class final Lcom/google/android/maps/driveabout/vector/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/e;Ln/e;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p2}, Ln/e;->f()I

    move-result v0

    invoke-virtual {p1}, Ln/e;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p1, Ln/e;

    check-cast p2, Ln/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/V;->a(Ln/e;Ln/e;)I

    move-result v0

    return v0
.end method
