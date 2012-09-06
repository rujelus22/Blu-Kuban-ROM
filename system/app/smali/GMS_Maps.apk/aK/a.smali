.class public LaK/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Ljava/lang/CharSequence;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LaK/a;->b:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, LaK/a;->a:Landroid/view/View$OnClickListener;

    .line 43
    iput p3, p0, LaK/a;->c:I

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 64
    new-instance v1, LaK/c;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaK/c;-><init>(LaK/b;)V

    .line 65
    const v0, 0x7f100266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaK/c;->a:Landroid/widget/TextView;

    .line 66
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 71
    check-cast p2, LaK/c;

    iget-object v0, p2, LaK/c;->a:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, LaK/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, LaK/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, LaK/a;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 48
    const v0, 0x7f0400bf

    return v0
.end method
