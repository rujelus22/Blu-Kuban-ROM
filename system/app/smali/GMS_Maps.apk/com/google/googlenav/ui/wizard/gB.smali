.class public Lcom/google/googlenav/ui/wizard/gB;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gx;

.field private b:Landroid/view/View;

.field private final c:Landroid/media/AudioManager;

.field private final d:Lcom/google/googlenav/ui/wizard/gK;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gx;Lcom/google/googlenav/ui/p;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    const/4 v0, 0x0

    new-array v0, v0, [Laq/a;

    const v1, 0x7f0d001c

    invoke-direct {p0, p2, v0, v1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->k()Lcom/google/googlenav/ui/wizard/gK;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gB;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    return-object v0
.end method

.method private a(ILandroid/widget/SeekBar;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gB;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->m()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gB;)Lcom/google/googlenav/ui/wizard/gK;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    return-object v0
.end method

.method static synthetic i()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/gB;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method private k()Lcom/google/googlenav/ui/wizard/gK;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/googlenav/ui/wizard/gH;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gH;-><init>(Lcom/google/googlenav/ui/wizard/gB;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/googlenav/ui/wizard/gG;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gG;-><init>(Lcom/google/googlenav/ui/wizard/gB;)V

    goto :goto_b
.end method

.method private m()V
    .registers 8

    const/16 v3, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v4, :cond_59

    move v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    if-eqz v4, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    invoke-interface {v1, v5}, Lcom/google/googlenav/ui/wizard/gK;->a(I)V

    invoke-direct {p0, v5, v0}, Lcom/google/googlenav/ui/wizard/gB;->a(ILandroid/widget/SeekBar;)V

    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v4, 0x7f0f03d1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5b

    :goto_4b
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    invoke-interface {v1, v6}, Lcom/google/googlenav/ui/wizard/gK;->a(I)V

    invoke-direct {p0, v6, v0}, Lcom/google/googlenav/ui/wizard/gB;->a(ILandroid/widget/SeekBar;)V

    :cond_58
    return-void

    :cond_59
    move v1, v3

    goto :goto_22

    :cond_5b
    move v2, v3

    goto :goto_4b
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gB;->requestWindowFeature(I)Z

    :cond_14
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    const v7, 0x7f080007

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x3d4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v2, 0x7f0f03cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v3, 0x7f0f03d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v3, 0x3d2

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x3d7

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x3d8

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/gA;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-nez v3, :cond_82

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_82
    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v6

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/gA;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-nez v3, :cond_98

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_98
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v3

    iget-object v6, v3, Lcom/google/googlenav/ui/wizard/gA;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_159

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_159

    move v3, v4

    :goto_b9
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15c

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15c

    move v3, v4

    :goto_d5
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/gx;->a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;

    move-result-object v7

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15f

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v3, v6}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_15f

    :goto_f0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    invoke-interface {v3}, Lcom/google/googlenav/ui/wizard/gK;->a()V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v4, 0x7f0f03d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    new-instance v4, Lcom/google/googlenav/ui/wizard/gI;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v6}, Lcom/google/googlenav/ui/wizard/gI;-><init>(Lcom/google/googlenav/ui/wizard/gB;I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v4, 0x7f0f03d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    new-instance v4, Lcom/google/googlenav/ui/wizard/gI;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, Lcom/google/googlenav/ui/wizard/gI;-><init>(Lcom/google/googlenav/ui/wizard/gB;I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/gE;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/googlenav/ui/wizard/gE;-><init>(Lcom/google/googlenav/ui/wizard/gB;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v4, 0x7f0f0011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/16 v4, 0x3d0

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/google/googlenav/ui/wizard/gD;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/gD;-><init>(Lcom/google/googlenav/ui/wizard/gB;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    return-object v0

    :cond_159
    move v3, v5

    goto/16 :goto_b9

    :cond_15c
    move v3, v5

    goto/16 :goto_d5

    :cond_15f
    move v4, v5

    goto :goto_f0
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3d4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :goto_13
    new-instance v0, Lcom/google/googlenav/ui/wizard/gC;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gC;-><init>(Lcom/google/googlenav/ui/wizard/gB;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gB;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method public h()Ljava/util/EnumSet;
    .registers 4

    const-class v0, Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v2, 0x7f0f03d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v2, 0x7f0f03cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gB;->b:Landroid/view/View;

    const v2, 0x7f0f03d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_48
    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_42

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gB;->h()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x2

    :goto_13
    packed-switch p1, :pswitch_data_4c

    move v0, v1

    :goto_17
    :sswitch_17
    return v0

    :sswitch_18
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->d:Lcom/google/googlenav/ui/wizard/gK;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/gK;->b()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->a:Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gx;->o()V

    goto :goto_17

    :cond_23
    sget-object v3, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x3

    goto :goto_13

    :cond_2d
    move v0, v1

    goto :goto_17

    :pswitch_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->m()V

    goto :goto_17

    :pswitch_38
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gB;->c:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gB;->m()V

    goto :goto_17

    :sswitch_data_42
    .sparse-switch
        0x4 -> :sswitch_18
        0x54 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x18
        :pswitch_2f
        :pswitch_38
    .end packed-switch
.end method
