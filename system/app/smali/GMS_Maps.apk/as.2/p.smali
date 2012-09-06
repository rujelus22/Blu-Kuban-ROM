.class LaS/p;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaS/o;


# direct methods
.method constructor <init>(LaS/o;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LaS/p;->a:LaS/o;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, LaS/p;->a:LaS/o;

    invoke-virtual {v0}, LaS/o;->l()V

    .line 117
    return-void
.end method
