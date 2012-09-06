.class Ll/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aI;


# instance fields
.field final synthetic a:Ll/n;


# direct methods
.method constructor <init>(Ll/n;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Ll/o;->a:Ll/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr/aH;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Ll/o;->a:Ll/n;

    invoke-virtual {v0}, Ll/n;->a()V

    .line 70
    return-void
.end method

.method public a(Lr/aH;Ln/am;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-interface {p1, p2, v3}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_10

    .line 77
    iget-object v1, p0, Ll/o;->a:Ll/n;

    invoke-interface {v0}, Ln/al;->d()Ln/am;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Ll/n;->a(Ln/am;ILn/al;)V

    .line 79
    :cond_10
    return-void
.end method
