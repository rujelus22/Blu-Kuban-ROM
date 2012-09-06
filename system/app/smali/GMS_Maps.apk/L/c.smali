.class Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/p;

.field private final b:Ln/i;

.field private c:Ln/Q;


# direct methods
.method public constructor <init>(Ln/d;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Ln/d;->a()Ln/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v0

    iput-object v0, p0, Ll/c;->a:Ln/p;

    .line 98
    new-instance v0, Ln/i;

    invoke-direct {v0}, Ln/i;-><init>()V

    iput-object v0, p0, Ll/c;->b:Ln/i;

    .line 99
    invoke-virtual {p1}, Ln/d;->b()Ln/az;

    move-result-object v0

    iget-object v1, p0, Ll/c;->b:Ln/i;

    invoke-virtual {v0, v1}, Ln/az;->a(Ln/i;)V

    .line 100
    return-void
.end method

.method static synthetic a(Ll/c;)Ln/p;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ll/c;->a:Ln/p;

    return-object v0
.end method


# virtual methods
.method public a()Ll/a;
    .registers 6

    .prologue
    .line 109
    new-instance v0, Ll/a;

    iget-object v1, p0, Ll/c;->a:Ln/p;

    iget-object v2, p0, Ll/c;->b:Ln/i;

    iget-object v3, p0, Ll/c;->c:Ln/Q;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ll/a;-><init>(Ln/p;Ln/h;Ln/Q;[Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ln/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Ll/c;->c:Ln/Q;

    .line 105
    return-void
.end method
