.class Lcom/google/android/apps/plus/fragments/EventLocationFragment$EventLocationAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "EventLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EventLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventLocationAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 432
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 448
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 449
    .local v2, iconView:Landroid/widget/ImageView;
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 450
    .local v3, titleView:Landroid/widget/TextView;
    const v5, 0x1020005

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    .local v1, descriptionView:Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 453
    .local v4, type:I
    packed-switch v4, :pswitch_data_5c

    .line 468
    :goto_26
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, description:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 471
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :goto_3f
    return-void

    .line 455
    .end local v0           #description:Ljava/lang/String;
    :pswitch_40
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    const v5, 0x7f0200e6

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26

    .line 460
    :pswitch_4a
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26

    .line 464
    :pswitch_4e
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    const v5, 0x7f0200e5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26

    .line 474
    .restart local v0       #description:Ljava/lang/String;
    :cond_58
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f

    .line 453
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 439
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
