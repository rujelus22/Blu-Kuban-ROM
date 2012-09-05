.class public abstract Lan;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected a:Ldg;

.field protected b:Lw;


# direct methods
.method public constructor <init>(Ldg;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lan;->a:Ldg;

    .line 23
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    iput-object v0, p0, Lan;->b:Lw;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lan;->b:Lw;

    iget-object v1, p0, Lan;->a:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lan;->a()Z

    move-result v0

    return v0
.end method

.method public abstract c()Z
.end method
