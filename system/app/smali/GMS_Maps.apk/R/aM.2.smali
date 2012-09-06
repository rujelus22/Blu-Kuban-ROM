.class final Lr/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aO;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lr/aM;->a:I

    iput-boolean p2, p0, Lr/aM;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget v0, p0, Lr/aM;->a:I

    iput v0, p0, Lr/aM;->c:I

    .line 138
    iget-boolean v0, p0, Lr/aM;->b:Z

    iput-boolean v0, p0, Lr/aM;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/aF;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    iget v3, p0, Lr/aM;->c:I

    if-ge v0, v3, :cond_c

    move v0, v1

    .line 157
    :goto_b
    return v0

    .line 145
    :cond_c
    if-nez p2, :cond_10

    move v0, v2

    .line 146
    goto :goto_b

    .line 148
    :cond_10
    iget-boolean v0, p0, Lr/aM;->d:Z

    if-eqz v0, :cond_2f

    .line 149
    invoke-virtual {p2}, Ln/aF;->k()Ln/aI;

    move-result-object v3

    .line 150
    :cond_18
    invoke-interface {v3}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 151
    invoke-interface {v3}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    invoke-interface {v0}, Ln/l;->h()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_18

    move v0, v2

    .line 152
    goto :goto_b

    :cond_2d
    move v0, v1

    .line 155
    goto :goto_b

    :cond_2f
    move v0, v2

    .line 157
    goto :goto_b
.end method
