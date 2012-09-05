.class public Lai/d;
.super Lah/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lah/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZZIZZ)Lah/d;
    .registers 14

    new-instance v0, Lai/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lai/c;-><init>(IZZIZZ)V

    invoke-virtual {p0, v0}, Lai/d;->a(Lah/d;)Lah/d;

    move-result-object v0

    return-object v0
.end method
