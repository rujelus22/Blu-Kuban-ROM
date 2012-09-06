.class Ld/o;
.super Ld/q;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ld/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/m;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Ld/p;

    invoke-direct {v0, p0, p1}, Ld/p;-><init>(Ld/o;Ld/m;)V

    invoke-static {v0}, Ld/r;->a(Ld/t;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
