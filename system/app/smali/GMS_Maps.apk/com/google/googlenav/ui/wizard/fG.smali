.class Lcom/google/googlenav/ui/wizard/fg;
.super Lcom/google/googlenav/ui/wizard/fb;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;

.field private c:Lax/A;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fg;->b:Lcom/google/googlenav/ui/wizard/eT;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fb;-><init>(Lcom/google/googlenav/ui/wizard/eT;)V

    .line 627
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fg;->c:Lax/A;

    .line 628
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 632
    new-instance v6, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v6, p1, v8}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 634
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2f7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fg;->c:Lax/A;

    invoke-direct {v5, v7, v7, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 638
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2f8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fg;->c:Lax/A;

    invoke-direct {v5, v7, v8, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 642
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x2e8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/googlenav/ui/view/a;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fg;->c:Lax/A;

    invoke-direct {v5, v7, v3, v4}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 647
    return-object v6
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fg;->c:Lax/A;

    invoke-virtual {v0}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
