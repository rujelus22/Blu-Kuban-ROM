.class public final Lcom/coremobility/app/vnotes/as;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .registers 4

    const v0, 0x7f030015

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput v0, p0, Lcom/coremobility/app/vnotes/as;->a:I

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/as;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/kg;

    if-eqz v0, :cond_3a

    iget-object v1, v0, Lcom/coremobility/app/vnotes/kg;->b:Ljava/lang/String;

    move-object v3, v1

    :goto_b
    if-eqz v0, :cond_3e

    iget-object v2, v0, Lcom/coremobility/app/vnotes/kg;->a:Ljava/lang/String;

    :goto_f
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/as;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_41

    move-object v1, p2

    :goto_16
    const v0, 0x7f0b004d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    :goto_39
    return-object v0

    :cond_3a
    const-string v1, "Other"

    move-object v3, v1

    goto :goto_b

    :cond_3e
    const-string v2, "Unknown"

    goto :goto_f

    :cond_41
    new-instance v1, Lcom/coremobility/app/customui/a;

    iget v4, p0, Lcom/coremobility/app/vnotes/as;->a:I

    invoke-direct {v1, v0, v4}, Lcom/coremobility/app/customui/a;-><init>(Landroid/content/Context;I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_16

    :catch_49
    move-exception v0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_39
.end method
