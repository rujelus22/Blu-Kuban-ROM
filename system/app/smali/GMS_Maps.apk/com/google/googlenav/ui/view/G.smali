.class public Lcom/google/googlenav/ui/view/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:[I

.field public e:[I

.field public f:Ljava/util/List;

.field public final g:Z

.field public final h:Lcom/google/googlenav/ui/aW;


# direct methods
.method public constructor <init>(Ljava/lang/String;[I[ILjava/util/List;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    array-length v0, p3

    array-length v1, p2

    if-eq v0, v1, :cond_f

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "optionValues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_f
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_1e

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "optionsContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1e
    iput-object p1, p0, Lcom/google/googlenav/ui/view/G;->c:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/googlenav/ui/view/G;->d:[I

    .line 76
    iput-object p3, p0, Lcom/google/googlenav/ui/view/G;->e:[I

    .line 77
    iput-object p4, p0, Lcom/google/googlenav/ui/view/G;->f:Ljava/util/List;

    .line 78
    iput-boolean p5, p0, Lcom/google/googlenav/ui/view/G;->g:Z

    .line 79
    const/16 v0, 0x5f6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/G;->h:Lcom/google/googlenav/ui/aW;

    .line 80
    return-void
.end method
