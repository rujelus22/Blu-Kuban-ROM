.class Lcom/google/googlenav/ui/wizard/gv;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gr;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gr;Lcom/google/googlenav/ui/p;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    const v0, 0x7f0d001d

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_79

    const v0, 0x7f0f03ac

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gv;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "Playback settings"

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2f
    const v0, 0x7f0f03b8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-wide/high16 v1, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f03b6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gv;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/gr;->a(Lcom/google/googlenav/ui/wizard/gr;)Lcom/google/googlenav/ui/wizard/gu;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/gu;->b:[Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v2, 0x7f0f03b9

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/google/googlenav/ui/wizard/gw;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/googlenav/ui/wizard/gw;-><init>(Lcom/google/googlenav/ui/wizard/gv;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_79
    const v0, 0x7f0f00d2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Playback settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method
