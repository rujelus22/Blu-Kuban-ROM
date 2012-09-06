.class Laoz;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LaqF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laoy;


# direct methods
.method constructor <init>(Laoy;)V
    .registers 2
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Laoz;->a:Laoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaqF;LaqF;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1}, LaqF;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LaqF;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 563
    check-cast p1, LaqF;

    check-cast p2, LaqF;

    invoke-virtual {p0, p1, p2}, Laoz;->a(LaqF;LaqF;)I

    move-result v0

    return v0
.end method
