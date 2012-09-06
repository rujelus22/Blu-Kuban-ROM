.class public Ln/aE;
.super Ln/aC;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln/m;)V
    .registers 5
    .parameter

    .prologue
    .line 106
    const/4 v1, 0x0

    instance-of v0, p1, Ln/o;

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    :goto_6
    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v0, v2}, Ln/aC;-><init>(Ln/m;Ln/l;II)V

    .line 109
    return-void

    .line 106
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Ln/aE;->a:Ln/m;

    return-object v0
.end method
