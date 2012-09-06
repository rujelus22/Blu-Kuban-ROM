.class Lcom/google/googlenav/settings/J;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/I;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/I;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/google/googlenav/settings/J;->a:Lcom/google/googlenav/settings/I;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 475
    const-string v0, "UOCT_SET_OR_LAST_NOTIFICATION"

    invoke-static {v0}, LaT/d;->b(Ljava/lang/String;)V

    .line 477
    return-void
.end method
