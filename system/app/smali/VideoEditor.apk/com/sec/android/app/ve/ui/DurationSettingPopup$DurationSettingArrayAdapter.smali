.class Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DurationSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/DurationSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurationSettingArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/ve/ui/PopupActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/ve/ui/PopupActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/ve/ui/PopupActionItem;>;"
    const v0, 0x7f03000e

    const v1, 0x7f0b000b

    .line 125
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 128
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/ui/PopupActionItem;

    .line 137
    .local v0, actionItem:Lcom/sec/android/app/ve/ui/PopupActionItem;
    if-nez p2, :cond_39

    .line 138
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000e

    .line 139
    const/4 v5, 0x0

    .line 138
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 140
    const v3, 0x7f0b000b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, mTitel:Landroid/widget/TextView;
    const v3, 0x7f0b0015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, mIcon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .end local v1           #mIcon:Landroid/widget/ImageView;
    .end local v2           #mTitel:Landroid/widget/TextView;
    :cond_39
    return-object p2
.end method
