.class public abstract Lak/c;
.super Ljava/lang/Object;

# interfaces
.implements Lak/m;


# instance fields
.field private final a:Lak/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lak/o;

    invoke-direct {v0, p0}, Lak/o;-><init>(Lak/m;)V

    iput-object v0, p0, Lak/c;->a:Lak/o;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lak/c;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->a()V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lak/c;->a:Lak/o;

    invoke-virtual {v0, p1}, Lak/o;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 4

    iget-object v0, p0, Lak/c;->a:Lak/o;

    invoke-virtual {v0, p1, p2}, Lak/o;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public a_(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lak/c;->a:Lak/o;

    invoke-virtual {v0, p1}, Lak/o;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
