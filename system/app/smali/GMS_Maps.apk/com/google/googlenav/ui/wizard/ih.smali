.class Lcom/google/googlenav/ui/wizard/ih;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/id;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/id;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    .line 67
    const v0, 0x7f0f001c

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ih;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 77
    const v0, 0x7f100435

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ih;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "Playback settings"

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :goto_27
    const v0, 0x7f100441

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 87
    const-wide/high16 v1, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f10043f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 90
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ih;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/ih;->a:Lcom/google/googlenav/ui/wizard/id;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/id;->a(Lcom/google/googlenav/ui/wizard/id;)Lcom/google/googlenav/ui/wizard/ig;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/ig;->b:[Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 92
    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    const v2, 0x7f100442

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 96
    new-instance v4, Lcom/google/googlenav/ui/wizard/ii;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/googlenav/ui/wizard/ii;-><init>(Lcom/google/googlenav/ui/wizard/ih;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v3

    .line 81
    :cond_71
    const v0, 0x7f100025

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    const-string v1, "Playback settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method
