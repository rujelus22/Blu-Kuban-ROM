.class Lcom/google/googlenav/ui/wizard/ff;
.super Lcom/google/googlenav/ui/wizard/fb;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;

.field private final c:I

.field private final d:Lax/A;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ff;->b:Lcom/google/googlenav/ui/wizard/eT;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fb;-><init>(Lcom/google/googlenav/ui/wizard/eT;)V

    .line 698
    iput p2, p0, Lcom/google/googlenav/ui/wizard/ff;->c:I

    .line 699
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/wizard/eT;->b(Lcom/google/googlenav/ui/wizard/eT;I)Lax/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ff;->d:Lax/A;

    .line 700
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 704
    new-instance v6, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v6, p1, v8}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 706
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ff;->d:Lax/A;

    if-eqz v0, :cond_28

    .line 707
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2f7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlenav/ui/wizard/ff;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v7, v3, v4}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 713
    :cond_28
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x111

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/ff;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v7, v8, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ff;->d:Lax/A;

    if-eqz v0, :cond_62

    .line 719
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2e8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/ff;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v7, v7, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 727
    :cond_62
    return-object v6
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ff;->c:I

    if-nez v0, :cond_b

    .line 733
    const/16 v0, 0x1ee

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    :goto_a
    return-object v0

    :cond_b
    const/16 v0, 0x61c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
