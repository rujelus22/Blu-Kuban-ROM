.class public abstract LU/c;
.super Ljava/lang/Object;

# interfaces
.implements LU/m;


# instance fields
.field private final a:LU/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/o;

    invoke-direct {v0, p0}, LU/o;-><init>(LU/m;)V

    iput-object v0, p0, LU/c;->a:LU/o;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LU/c;->a:LU/o;

    invoke-virtual {v0}, LU/o;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 4

    iget-object v0, p0, LU/c;->a:LU/o;

    invoke-virtual {v0, p1, p2}, LU/o;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, LU/c;->a:LU/o;

    invoke-virtual {v0, p1}, LU/o;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
