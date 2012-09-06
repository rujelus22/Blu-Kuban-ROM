.class public Lba/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Lba/d;

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lba/d;FF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lba/c;->c:Lba/d;

    .line 26
    iput p2, p0, Lba/c;->a:F

    .line 27
    iput p3, p0, Lba/c;->b:F

    .line 28
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lba/c;->f:F

    return v0
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lba/c;->f:F

    .line 36
    return-void
.end method

.method a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lba/c;->d:F

    .line 48
    iput p2, p0, Lba/c;->e:F

    .line 49
    invoke-virtual {p0}, Lba/c;->b()V

    .line 50
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 53
    iget v0, p0, Lba/c;->d:F

    iget v1, p0, Lba/c;->e:F

    iget-object v2, p0, Lba/c;->c:Lba/d;

    invoke-virtual {v2}, Lba/d;->c()Lbb/f;

    move-result-object v2

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, Lba/c;->c:Lba/d;

    invoke-virtual {v3}, Lba/d;->c()Lbb/f;

    move-result-object v3

    iget v3, v3, Lbb/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbb/c;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Lba/c;->g:F

    .line 55
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lba/c;->g:F

    return v0
.end method
