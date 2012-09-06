.class public LE/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput p1, p0, LE/g;->b:I

    .line 45
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, LE/g;->a:Z

    .line 37
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, LE/g;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, LE/g;->b:I

    return v0
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, LE/g;->c:Z

    .line 49
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, LE/g;->c:Z

    return v0
.end method
