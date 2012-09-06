.class final enum Lali;
.super Lalh;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lalh;-><init>(Ljava/lang/String;ILalg;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation

    .prologue
    .line 147
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
