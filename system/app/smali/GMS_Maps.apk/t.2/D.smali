.class public LT/d;
.super LS/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, LS/k;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(IZZIZZ)LS/d;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, LT/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, LT/c;-><init>(IZZIZZ)V

    .line 23
    invoke-virtual {p0, v0}, LT/d;->a(LS/d;)LS/d;

    move-result-object v0

    return-object v0
.end method
