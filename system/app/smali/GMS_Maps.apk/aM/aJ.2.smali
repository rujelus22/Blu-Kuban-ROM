.class LaM/aJ;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/aI;


# direct methods
.method constructor <init>(LaM/aI;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, LaM/aJ;->a:LaM/aI;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, LaM/aJ;->a:LaM/aI;

    invoke-static {v0}, LaM/aI;->a(LaM/aI;)V

    .line 165
    return-void
.end method
