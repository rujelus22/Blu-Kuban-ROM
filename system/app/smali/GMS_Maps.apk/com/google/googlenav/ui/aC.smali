.class public Lcom/google/googlenav/ui/aC;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v0, 0x7f03012c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aC;->a:Landroid/view/View;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Laq/a;)I
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    invoke-virtual {v0, p0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0f0423

    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    invoke-virtual {v0, p0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f0f0424

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Lcom/google/googlenav/android/BaseMapsActivity;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    packed-switch p1, :pswitch_data_28

    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    nop

    :pswitch_data_28
    .packed-switch 0x4
        :pswitch_f
        :pswitch_1b
    .end packed-switch
.end method

.method public static a(Landroid/view/MenuItem;)Laq/a;
    .registers 2

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :sswitch_9
    sget-object v0, Lcom/google/googlenav/ui/n;->F:Laq/a;

    goto :goto_8

    :sswitch_c
    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    goto :goto_8

    :sswitch_f
    sget-object v0, Lcom/google/googlenav/ui/n;->G:Laq/a;

    goto :goto_8

    :sswitch_12
    sget-object v0, Lcom/google/googlenav/ui/n;->H:Laq/a;

    goto :goto_8

    :sswitch_15
    sget-object v0, Lcom/google/googlenav/ui/n;->P:Laq/a;

    goto :goto_8

    :sswitch_18
    sget-object v0, Lcom/google/googlenav/ui/n;->r:Laq/a;

    goto :goto_8

    :sswitch_1b
    sget-object v0, Lcom/google/googlenav/ui/n;->D:Laq/a;

    goto :goto_8

    :sswitch_1e
    sget-object v0, Lcom/google/googlenav/ui/n;->aD:Laq/a;

    goto :goto_8

    :sswitch_21
    sget-object v0, Lcom/google/googlenav/ui/n;->aC:Laq/a;

    goto :goto_8

    :sswitch_24
    sget-object v0, Lcom/google/googlenav/ui/n;->R:Laq/a;

    goto :goto_8

    :sswitch_27
    sget-object v0, Lcom/google/googlenav/ui/n;->J:Laq/a;

    goto :goto_8

    :sswitch_2a
    sget-object v0, Lcom/google/googlenav/ui/n;->K:Laq/a;

    goto :goto_8

    :sswitch_2d
    sget-object v0, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    goto :goto_8

    :sswitch_30
    sget-object v0, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    goto :goto_8

    :sswitch_33
    sget-object v0, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    goto :goto_8

    :sswitch_36
    sget-object v0, Lcom/google/googlenav/ui/n;->az:Laq/a;

    goto :goto_8

    :sswitch_39
    sget-object v0, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    goto :goto_8

    :sswitch_3c
    sget-object v0, Lcom/google/googlenav/ui/n;->ax:Laq/a;

    goto :goto_8

    :sswitch_3f
    sget-object v0, Lcom/google/googlenav/ui/n;->Y:Laq/a;

    goto :goto_8

    :sswitch_42
    sget-object v0, Lcom/google/googlenav/ui/n;->ac:Laq/a;

    goto :goto_8

    :sswitch_45
    sget-object v0, Lcom/google/googlenav/ui/n;->ae:Laq/a;

    goto :goto_8

    :sswitch_data_48
    .sparse-switch
        0x65 -> :sswitch_42
        0x66 -> :sswitch_45
        0x67 -> :sswitch_3c
        0x7f0f00fd -> :sswitch_18
        0x7f0f0220 -> :sswitch_c
        0x7f0f0281 -> :sswitch_1e
        0x7f0f040d -> :sswitch_9
        0x7f0f041f -> :sswitch_f
        0x7f0f0420 -> :sswitch_12
        0x7f0f0421 -> :sswitch_15
        0x7f0f0422 -> :sswitch_2d
        0x7f0f0423 -> :sswitch_30
        0x7f0f0424 -> :sswitch_39
        0x7f0f0425 -> :sswitch_21
        0x7f0f0426 -> :sswitch_1b
        0x7f0f0427 -> :sswitch_3f
        0x7f0f042d -> :sswitch_27
        0x7f0f042e -> :sswitch_2a
        0x7f0f042f -> :sswitch_24
        0x7f0f0432 -> :sswitch_33
        0x7f0f0433 -> :sswitch_36
    .end sparse-switch
.end method

.method public static a(Landroid/view/Menu;)V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/Menu;Lcom/google/googlenav/ui/av;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/av;->b(Laq/a;)Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7f0f042e

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15
    sget-object v0, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/av;->b(Laq/a;)Z

    move-result v0

    if-nez v0, :cond_29

    const v0, 0x7f0f042d

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_29
    return-void
.end method

.method public static a(Landroid/view/Menu;Ljava/util/List;Z)V
    .registers 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/android/a;->a()Lcom/google/googlenav/ui/android/a;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/a;

    invoke-virtual {v0}, Laq/a;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Laq/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v2, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/a;->b(Laq/a;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/a;->a(Laq/a;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2d
    sget-object v5, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {v0, v5}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_3c
    return-void
.end method

.method public static b(Landroid/view/Menu;)V
    .registers 1

    return-void
.end method

.method public static b(Landroid/view/MenuItem;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-void
.end method

.method public static c(Landroid/view/MenuItem;)V
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/aC;->a:Landroid/view/View;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-void
.end method
