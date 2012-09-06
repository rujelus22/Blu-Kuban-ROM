.class LaM/an;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/i;

.field final synthetic b:LaM/am;


# direct methods
.method constructor <init>(LaM/am;LY/c;LaM/i;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, LaM/an;->b:LaM/am;

    iput-object p3, p0, LaM/an;->a:LaM/i;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, LaM/an;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->aP()V

    .line 939
    return-void
.end method
