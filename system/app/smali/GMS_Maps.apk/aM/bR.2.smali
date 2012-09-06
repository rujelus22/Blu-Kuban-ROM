.class LaM/bR;
.super LaT/i;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bQ;


# direct methods
.method constructor <init>(LaM/bQ;LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, LaM/bR;->a:LaM/bQ;

    invoke-direct {p0, p2, p3, p4}, LaT/i;-><init>(LY/c;Lcom/google/googlenav/android/Y;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    .prologue
    .line 767
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->h()V

    .line 768
    return-void
.end method
