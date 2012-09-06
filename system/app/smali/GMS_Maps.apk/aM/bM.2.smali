.class LaM/bM;
.super LaT/i;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bK;


# direct methods
.method constructor <init>(LaM/bK;LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, LaM/bM;->a:LaM/bK;

    invoke-direct {p0, p2, p3, p4}, LaT/i;-><init>(LY/c;Lcom/google/googlenav/android/Y;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, LaM/bM;->a:LaM/bK;

    invoke-virtual {v0}, LaM/bK;->e()V

    .line 602
    return-void
.end method
