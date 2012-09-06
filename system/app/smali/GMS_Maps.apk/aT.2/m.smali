.class LaT/m;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaT/k;


# direct methods
.method constructor <init>(LaT/k;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, LaT/m;->a:LaT/k;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, LaT/m;->a:LaT/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaT/k;->a(LaT/k;Z)V

    .line 584
    return-void
.end method
