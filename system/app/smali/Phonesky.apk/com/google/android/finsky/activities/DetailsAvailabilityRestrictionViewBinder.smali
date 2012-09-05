.class public Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;
.super Ljava/lang/Object;
.source "DetailsAvailabilityRestrictionViewBinder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I
    .registers 6
    .parameter "document"

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    .line 55
    .local v1, restriction:I
    const v0, 0x7f0701c8

    .line 56
    .local v0, resourceId:I
    packed-switch v1, :pswitch_data_3c

    .line 76
    :goto_a
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item is not available. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return v0

    .line 58
    :pswitch_24
    const v0, 0x7f0701c9

    .line 59
    goto :goto_a

    .line 61
    :pswitch_28
    const v0, 0x7f0701ca

    .line 62
    goto :goto_a

    .line 64
    :pswitch_2c
    const v0, 0x7f0701cb

    .line 65
    goto :goto_a

    .line 67
    :pswitch_30
    const v0, 0x7f0701cc

    .line 68
    goto :goto_a

    .line 70
    :pswitch_34
    const v0, 0x7f0701cd

    .line 71
    goto :goto_a

    .line 73
    :pswitch_38
    const v0, 0x7f0701ce

    goto :goto_a

    .line 56
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_24
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;IILcom/google/android/finsky/api/model/DfeToc;)V
    .registers 12
    .parameter "view"
    .parameter "document"
    .parameter "iconWidth"
    .parameter "iconRightMargin"
    .parameter "toc"

    .prologue
    .line 26
    invoke-virtual {p2, p5}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v1

    .line 27
    .local v1, isAvailable:Z
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasWarningMessage()Z

    move-result v0

    .line 29
    .local v0, hasWarningMessage:Z
    if-eqz v1, :cond_12

    if-nez v0, :cond_12

    .line 30
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_11
    :goto_11
    return-void

    .line 34
    :cond_12
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 35
    const v5, 0x7f0800d1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 37
    .local v3, reason:Landroid/widget/TextView;
    if-nez v1, :cond_3e

    .line 38
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/DetailsAvailabilityRestrictionViewBinder;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 44
    :goto_28
    if-lez p3, :cond_11

    .line 45
    const v5, 0x7f0800d0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 46
    .local v4, reasonIcon:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput p3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 49
    iput p4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_11

    .line 40
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #reasonIcon:Landroid/widget/ImageView;
    :cond_3e
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getWarningMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_28
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method
