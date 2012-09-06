.class Lcom/google/android/maps/driveabout/app/br;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bn;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/bn;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/by;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/br;->a:Lcom/google/android/maps/driveabout/app/bn;

    .line 117
    const v0, 0x1090005

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/br;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1a

    .line 122
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_1a
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/bn;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/by;Lcom/google/android/maps/driveabout/app/bo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/br;-><init>(Lcom/google/android/maps/driveabout/app/bn;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/by;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x1020014

    .line 130
    if-eqz p2, :cond_52

    .line 132
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    .line 141
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/br;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/br;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 145
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 147
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/by;->c()I

    move-result v2

    .line 148
    const v0, 0x7f1000df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    if-nez v2, :cond_6a

    .line 151
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :goto_45
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 166
    const v0, 0x7f0200d7

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 171
    :goto_51
    return-object p2

    .line 135
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/br;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    const v1, 0x7f04004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    goto :goto_c

    .line 153
    :cond_6a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_45

    .line 169
    :cond_72
    const v0, 0x7f020117

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_51
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/br;->a:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/by;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bn;->a(Lcom/google/android/maps/driveabout/app/bn;Lcom/google/android/maps/driveabout/app/by;)V

    .line 182
    return-void
.end method
