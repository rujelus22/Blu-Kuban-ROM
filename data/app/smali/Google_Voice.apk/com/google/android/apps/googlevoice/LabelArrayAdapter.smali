.class public Lcom/google/android/apps/googlevoice/LabelArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabelArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/googlevoice/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private labels:[Lcom/google/android/apps/googlevoice/core/Label;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 4
    .parameter "context"
    .parameter "labels"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 34
    return-void
.end method

.method private setLabelTextView(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .registers 9
    .parameter "parent"
    .parameter "read"
    .parameter "title"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 60
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->read_label_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, readLabelView:Landroid/widget/TextView;
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->unread_label_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, unreadLabelView:Landroid/widget/TextView;
    if-eqz p2, :cond_24

    move v2, v3

    :goto_16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    if-nez p2, :cond_26

    :goto_1b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    if-eqz p2, :cond_28

    .line 65
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_23
    return-void

    :cond_24
    move v2, v4

    .line 62
    goto :goto_16

    :cond_26
    move v3, v4

    .line 63
    goto :goto_1b

    .line 67
    :cond_28
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 43
    if-nez p2, :cond_3c

    .line 44
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/google/android/apps/googlevoice/R$layout;->label_item:I

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, view:Landroid/view/View;
    :goto_b
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->unread_count:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, unreadView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v2

    .line 51
    .local v2, unread:I
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v6, v6, p1

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/core/Label;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    .local v1, title:Ljava/lang/CharSequence;
    if-nez v2, :cond_3e

    const/4 v0, 0x1

    .line 53
    .local v0, isRead:Z
    :goto_2a
    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/apps/googlevoice/LabelArrayAdapter;->setLabelTextView(Landroid/view/View;ZLjava/lang/CharSequence;)V

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    if-eqz v0, :cond_38

    const/16 v5, 0x8

    :cond_38
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    return-object v4

    .line 46
    .end local v0           #isRead:Z
    .end local v1           #title:Ljava/lang/CharSequence;
    .end local v2           #unread:I
    .end local v3           #unreadView:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_3c
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_b

    .restart local v1       #title:Ljava/lang/CharSequence;
    .restart local v2       #unread:I
    .restart local v3       #unreadView:Landroid/widget/TextView;
    :cond_3e
    move v0, v5

    .line 52
    goto :goto_2a
.end method
