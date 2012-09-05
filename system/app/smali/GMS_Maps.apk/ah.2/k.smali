.class public abstract Lah/k;
.super Ljava/lang/Object;

# interfaces
.implements Lah/b;


# instance fields
.field private a:Lah/l;

.field private b:Lah/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lah/g;
    .registers 2

    iget-object v0, p0, Lah/k;->b:Lah/g;

    if-nez v0, :cond_10

    iget-object v0, p0, Lah/k;->a:Lah/l;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lah/k;->a:Lah/l;

    invoke-interface {v0}, Lah/l;->a()Lah/g;

    move-result-object v0

    iput-object v0, p0, Lah/k;->b:Lah/g;

    :cond_10
    iget-object v0, p0, Lah/k;->b:Lah/g;

    return-object v0
.end method


# virtual methods
.method protected a(Lah/d;)Lah/d;
    .registers 4

    invoke-direct {p0}, Lah/k;->a()Lah/g;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Lah/m;

    invoke-direct {p0}, Lah/k;->a()Lah/g;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lah/m;-><init>(Lah/d;Lah/g;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public a(Lah/l;)V
    .registers 2

    iput-object p1, p0, Lah/k;->a:Lah/l;

    return-void
.end method
