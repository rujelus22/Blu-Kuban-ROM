.class public LT/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/h;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, LT/h;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)LS/f;
    .registers 5
    .parameter

    .prologue
    .line 34
    new-instance v0, LT/f;

    iget-object v1, p0, LT/h;->a:Landroid/content/Context;

    sget-object v2, LT/g;->a:LT/g;

    invoke-direct {v0, v1, p1, v2}, LT/f;-><init>(Landroid/content/Context;ILT/g;)V

    return-object v0
.end method

.method public a(II)LS/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, LT/f;

    invoke-direct {v0, p1, p2}, LT/f;-><init>(II)V

    return-object v0
.end method

.method public a(IIZ)LS/f;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, LT/f;

    invoke-direct {v0, p1, p2, p3}, LT/f;-><init>(IIZ)V

    return-object v0
.end method

.method public a([BII)LS/f;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, LT/f;

    invoke-direct {v0, p1, p2, p3}, LT/f;-><init>([BII)V

    return-object v0
.end method

.method public a([IIIZ)LS/f;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, LT/f;

    invoke-direct {v0, p1, p2, p3, p4}, LT/f;-><init>([IIIZ)V

    return-object v0
.end method

.method public b(I)LS/f;
    .registers 5
    .parameter

    .prologue
    .line 39
    new-instance v0, LT/f;

    iget-object v1, p0, LT/h;->a:Landroid/content/Context;

    sget-object v2, LT/g;->b:LT/g;

    invoke-direct {v0, v1, p1, v2}, LT/f;-><init>(Landroid/content/Context;ILT/g;)V

    return-object v0
.end method
