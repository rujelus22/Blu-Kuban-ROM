.class public Lbd/aD;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:Lcom/google/googlenav/ui/bl;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iput p2, p0, Lbd/aD;->b:I

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/bl;)I
    .registers 3

    const v0, 0x7f0300a9

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    const v0, 0x7f0300a7

    :cond_c
    :goto_c
    :pswitch_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/googlenav/ui/bl;->r:I

    packed-switch v1, :pswitch_data_aa

    :pswitch_12
    const v0, 0x7f03009d

    goto :goto_c

    :pswitch_16
    const v0, 0x7f0300a0

    goto :goto_c

    :pswitch_1a
    const v0, 0x7f0300fd

    goto :goto_c

    :pswitch_1e
    const v0, 0x7f0300fe

    goto :goto_c

    :pswitch_22
    const v0, 0x7f03010d

    goto :goto_c

    :pswitch_26
    const v0, 0x7f030002

    goto :goto_c

    :pswitch_2a
    const v0, 0x7f0300bf

    goto :goto_c

    :pswitch_2e
    const v0, 0x7f03004d

    goto :goto_c

    :pswitch_32
    const v0, 0x7f030186

    goto :goto_c

    :pswitch_36
    const v0, 0x7f03009e

    goto :goto_c

    :pswitch_3a
    const v0, 0x7f0300b3

    goto :goto_c

    :pswitch_3e
    const v0, 0x7f0300a4

    goto :goto_c

    :pswitch_42
    const v0, 0x7f0300ad

    goto :goto_c

    :pswitch_46
    const v0, 0x7f0300c8

    goto :goto_c

    :pswitch_4a
    const v0, 0x7f0300a6

    goto :goto_c

    :pswitch_4e
    const v0, 0x7f0300cb

    goto :goto_c

    :pswitch_52
    const v0, 0x7f0300c1

    goto :goto_c

    :pswitch_56
    const v0, 0x7f0300bd

    goto :goto_c

    :pswitch_5a
    const v0, 0x7f0300be

    goto :goto_c

    :pswitch_5e
    const v0, 0x7f0300c9

    goto :goto_c

    :pswitch_62
    const v0, 0x7f0300a3

    goto :goto_c

    :pswitch_66
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x7f0300ab

    goto :goto_c

    :pswitch_70
    const v0, 0x7f0300c4

    goto :goto_c

    :pswitch_74
    const v0, 0x7f0300a5

    goto :goto_c

    :pswitch_78
    const v0, 0x7f0300ca

    goto :goto_c

    :pswitch_7c
    const v0, 0x7f03009f

    goto :goto_c

    :pswitch_80
    const v0, 0x7f030073

    goto :goto_c

    :pswitch_84
    const v0, 0x7f03012a

    goto :goto_c

    :pswitch_88
    const v0, 0x7f030082

    goto :goto_c

    :pswitch_8c
    const v0, 0x7f030104

    goto/16 :goto_c

    :pswitch_91
    const v0, 0x7f0300a2

    goto/16 :goto_c

    :pswitch_96
    const v0, 0x7f0300c7

    goto/16 :goto_c

    :pswitch_9b
    const v0, 0x7f0300bc

    goto/16 :goto_c

    :pswitch_a0
    const v0, 0x7f03012e

    goto/16 :goto_c

    :pswitch_a5
    const v0, 0x7f0300b2

    goto/16 :goto_c

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_16
        :pswitch_2a
        :pswitch_2e
        :pswitch_36
        :pswitch_12
        :pswitch_12
        :pswitch_46
        :pswitch_36
        :pswitch_4a
        :pswitch_12
        :pswitch_12
        :pswitch_4e
        :pswitch_66
        :pswitch_74
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_3a
        :pswitch_12
        :pswitch_12
        :pswitch_52
        :pswitch_12
        :pswitch_56
        :pswitch_12
        :pswitch_22
        :pswitch_1e
        :pswitch_12
        :pswitch_5e
        :pswitch_12
        :pswitch_32
        :pswitch_12
        :pswitch_70
        :pswitch_7c
        :pswitch_1a
        :pswitch_80
        :pswitch_36
        :pswitch_12
        :pswitch_91
        :pswitch_c
        :pswitch_84
        :pswitch_12
        :pswitch_42
        :pswitch_12
        :pswitch_12
        :pswitch_3e
        :pswitch_88
        :pswitch_5a
        :pswitch_62
        :pswitch_96
        :pswitch_96
        :pswitch_26
        :pswitch_36
        :pswitch_9b
        :pswitch_12
        :pswitch_a0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_a5
        :pswitch_78
        :pswitch_78
        :pswitch_8c
    .end packed-switch
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v0, Lbd/aF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbd/aF;-><init>(Lbd/aE;)V

    check-cast p1, Lcom/google/googlenav/ui/android/TemplateView;

    iput-object p1, v0, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iput-object v1, v0, Lbd/aF;->b:Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method public a()Lcom/google/googlenav/ui/bl;
    .registers 2

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/aF;

    iget-object v0, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    check-cast v0, Lcom/google/googlenav/ui/android/EditableTemplateView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/p;)V

    :cond_18
    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3c

    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lax/aP;

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-static {v0, v1}, Lcom/google/googlenav/android/H;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-direct {p0, v0}, Lbd/aD;->b(Landroid/view/View;)V

    goto :goto_35

    :cond_3c
    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_52

    :cond_4c
    iget-object v0, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-direct {p0, v0}, Lbd/aD;->b(Landroid/view/View;)V

    goto :goto_35

    :cond_52
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p2, Lbd/aF;->a:Lcom/google/googlenav/ui/android/TemplateView;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_35
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    invoke-static {v0}, Lbd/aD;->a(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/aD;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lbd/aD;->a:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    sparse-switch v0, :sswitch_data_c

    const/4 v0, 0x1

    :goto_8
    return v0

    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    nop

    :sswitch_data_c
    .sparse-switch
        0x2 -> :sswitch_9
        0x7 -> :sswitch_9
        0x14 -> :sswitch_9
        0x29 -> :sswitch_9
        0x2f -> :sswitch_9
        0x33 -> :sswitch_9
        0x38 -> :sswitch_9
    .end sparse-switch
.end method
