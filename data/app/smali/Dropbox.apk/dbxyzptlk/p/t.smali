.class public final Ldbxyzptlk/p/t;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Ldbxyzptlk/l/k;

.field private final b:F


# direct methods
.method public constructor <init>(Ldbxyzptlk/l/k;F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p1, p0, Ldbxyzptlk/p/t;->a:Ldbxyzptlk/l/k;

    .line 892
    iput p2, p0, Ldbxyzptlk/p/t;->b:F

    .line 893
    return-void
.end method


# virtual methods
.method public final a()Ldbxyzptlk/l/k;
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Ldbxyzptlk/p/t;->a:Ldbxyzptlk/l/k;

    return-object v0
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 904
    iget v0, p0, Ldbxyzptlk/p/t;->b:F

    return v0
.end method
