.class public LT/a;
.super LT/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, LT/h;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a([BII)LS/f;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, LT/b;

    invoke-direct {v0, p1, p2, p3}, LT/b;-><init>([BII)V

    return-object v0
.end method
