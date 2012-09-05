.class public abstract Lcom/google/googlenav/ui/view/dialog/at;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field protected a:Lcom/google/googlenav/ui/wizard/hp;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/at;->a:Lcom/google/googlenav/ui/wizard/hp;

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0f017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/at;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1f
    return-void

    :cond_20
    sget-object v1, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, p2, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    goto :goto_1f
.end method
