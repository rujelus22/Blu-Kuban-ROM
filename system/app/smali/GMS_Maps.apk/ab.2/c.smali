.class Lab/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/google/googlenav/ui/view/n;

.field final synthetic i:Lcom/google/googlenav/ui/view/o;

.field final synthetic j:Lab/a;


# direct methods
.method constructor <init>(Lab/a;IILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lab/c;->j:Lab/a;

    iput p2, p0, Lab/c;->a:I

    iput p3, p0, Lab/c;->b:I

    iput-object p4, p0, Lab/c;->c:Ljava/lang/CharSequence;

    iput p5, p0, Lab/c;->d:I

    iput p6, p0, Lab/c;->e:I

    iput p7, p0, Lab/c;->f:I

    iput p8, p0, Lab/c;->g:I

    iput-object p9, p0, Lab/c;->h:Lcom/google/googlenav/ui/view/n;

    iput-object p10, p0, Lab/c;->i:Lcom/google/googlenav/ui/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 136
    iget-object v0, p0, Lab/c;->j:Lab/a;

    invoke-virtual {v0}, Lab/a;->c()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 144
    iget v0, p0, Lab/c;->a:I

    const-string v1, "ch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "l"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1b
    return-void

    .line 150
    :cond_1c
    iget-object v1, p0, Lab/c;->j:Lab/a;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v0

    iget v2, p0, Lab/c;->b:I

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    invoke-static {v1, v0}, Lab/a;->a(Lab/a;Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    .line 152
    iget-object v0, p0, Lab/c;->j:Lab/a;

    invoke-static {v0}, Lab/a;->b(Lab/a;)Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    move-result-object v0

    iget-object v1, p0, Lab/c;->j:Lab/a;

    invoke-static {v1}, Lab/a;->a(Lab/a;)Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    iget-object v2, p0, Lab/c;->c:Ljava/lang/CharSequence;

    iget v3, p0, Lab/c;->d:I

    iget v4, p0, Lab/c;->e:I

    iget v5, p0, Lab/c;->f:I

    iget v6, p0, Lab/c;->g:I

    iget-object v7, p0, Lab/c;->h:Lcom/google/googlenav/ui/view/n;

    iget-object v8, p0, Lab/c;->i:Lcom/google/googlenav/ui/view/o;

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a(Lcom/google/googlenav/android/Y;Ljava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;)V

    .line 154
    iget-object v0, p0, Lab/c;->j:Lab/a;

    invoke-static {v0}, Lab/a;->b(Lab/a;)Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a()V

    goto :goto_1b
.end method
