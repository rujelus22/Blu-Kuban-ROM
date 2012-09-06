.class Lcom/google/googlenav/ui/wizard/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ch;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/widget/TextView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ci;->b:Lcom/google/googlenav/ui/wizard/ch;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ci;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_46

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ci;->b:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_46

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->b:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 207
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ci;->b:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ch;->b(Lcom/google/googlenav/ui/wizard/ch;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ci;->b:Lcom/google/googlenav/ui/wizard/ch;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;)[Lcom/google/googlenav/aw;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 209
    :cond_46
    return-void
.end method
