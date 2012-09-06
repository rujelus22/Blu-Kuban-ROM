.class public Lcom/google/googlenav/ui/h;
.super Lcom/google/googlenav/ui/bd;
.source "SourceFile"


# instance fields
.field public a:Lad/t;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bd;Lad/t;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bd;-><init>(Lcom/google/googlenav/ui/bd;)V

    .line 22
    iput-object p2, p0, Lcom/google/googlenav/ui/h;->a:Lad/t;

    .line 23
    iput-boolean p3, p0, Lcom/google/googlenav/ui/h;->b:Z

    .line 24
    return-void
.end method
