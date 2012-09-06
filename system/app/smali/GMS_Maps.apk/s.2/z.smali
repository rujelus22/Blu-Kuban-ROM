.class Ls/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cJ;


# instance fields
.field final synthetic a:Ls/y;


# direct methods
.method constructor <init>(Ls/y;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Ls/z;->a:Ls/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public a(Lo/P;)V
    .registers 4
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Ls/z;->a:Ls/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/y;->a(Ls/y;Z)Z

    .line 75
    iget-object v0, p0, Ls/z;->a:Ls/y;

    iget-object v0, v0, Ls/y;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->k()V

    .line 76
    iget-object v0, p0, Ls/z;->a:Ls/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls/y;->a(Lo/P;Z)V

    .line 77
    return-void
.end method
