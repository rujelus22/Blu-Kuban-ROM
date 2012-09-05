.class public Lx/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lx/al;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lx/al;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/ak;->a:Lx/al;

    iput p2, p0, Lx/ak;->b:F

    iput p3, p0, Lx/ak;->c:F

    return-void
.end method


# virtual methods
.method public a()Lx/al;
    .registers 2

    iget-object v0, p0, Lx/ak;->a:Lx/al;

    return-object v0
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lx/ak;->b:F

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lx/ak;->c:F

    return v0
.end method
