.class Ll/u;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ll/t;


# direct methods
.method constructor <init>(Ll/t;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ll/u;->a:Ll/t;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Ll/u;->a:Ll/t;

    invoke-static {v0}, Ll/t;->a(Ll/t;)V

    .line 55
    return-void
.end method
