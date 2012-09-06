.class public abstract LaL/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field protected final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LaL/s;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 35
    iput-boolean p2, p0, LaL/s;->b:Z

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 59
    new-instance v1, LaL/t;

    invoke-direct {v1}, LaL/t;-><init>()V

    .line 60
    const v0, 0x7f100280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaL/t;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaL/t;->c:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f10027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaL/t;->a:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f100314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaL/t;->d:Landroid/view/View;

    .line 64
    return-object v1
.end method

.method protected abstract a(LaL/t;)V
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    check-cast p2, LaL/t;

    .line 46
    invoke-virtual {p0, p2}, LaL/s;->a(LaL/t;)V

    .line 47
    iget-boolean v0, p0, LaL/s;->b:Z

    if-eqz v0, :cond_10

    .line 48
    iget-object v0, p2, LaL/t;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_f
    return-void

    .line 50
    :cond_10
    iget-object v0, p2, LaL/t;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x3

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 74
    const v0, 0x7f040127

    return v0
.end method
