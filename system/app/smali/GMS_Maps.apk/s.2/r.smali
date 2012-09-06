.class Ls/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field final synthetic a:Lo/I;

.field final synthetic b:Ls/q;


# direct methods
.method constructor <init>(Ls/q;Lo/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Ls/r;->b:Ls/q;

    iput-object p2, p0, Ls/r;->a:Lo/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 5
    .parameter

    .prologue
    .line 1541
    iget-object v0, p0, Ls/r;->b:Ls/q;

    iget-object v0, v0, Ls/q;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    iget-object v1, p0, Ls/r;->a:Lo/I;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/q;->b(Lo/I;Z)V

    .line 1542
    return-void
.end method
