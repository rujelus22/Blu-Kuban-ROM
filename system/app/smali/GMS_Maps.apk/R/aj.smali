.class public Lr/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lr/ak;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lr/ak;FF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lr/aj;->a:Lr/ak;

    .line 170
    iput p2, p0, Lr/aj;->b:F

    .line 171
    iput p3, p0, Lr/aj;->c:F

    .line 172
    return-void
.end method


# virtual methods
.method public a()Lr/ak;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lr/aj;->a:Lr/ak;

    return-object v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lr/aj;->b:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lr/aj;->c:F

    return v0
.end method
