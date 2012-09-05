.class public Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SubMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckMode:Z

.field private mImageFieldId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mSize:I

.field private mTextFieldId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/util/ArrayList;)V
    .registers 7
    .parameter "context"
    .parameter "resource"
    .parameter "imageViewResourceId"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p5, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 166
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mResource:I

    .line 167
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mTextFieldId:I

    .line 168
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mImageFieldId:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 170
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mSize:I

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;IIILjava/util/ArrayList;Z)V
    .registers 14
    .parameter "context"
    .parameter "inflater"
    .parameter "resource"
    .parameter "imageViewResourceId"
    .parameter "textViewResourceId"
    .parameter
    .parameter "smartflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p6, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;-><init>(Landroid/content/Context;IIILjava/util/ArrayList;)V

    .line 176
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 177
    iput-boolean p7, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mCheckMode:Z

    .line 178
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 189
    const/4 v6, 0x0

    .line 190
    .local v6, text:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 191
    .local v4, image:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 192
    .local v1, check:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    .line 194
    .local v3, hasCheck:Z
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    .line 196
    .local v5, p:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mSize:I

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_27

    .line 197
    iget-object v8, v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f060014

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 198
    const p4, 0x7f03000c

    .line 199
    const/4 v3, 0x1

    .line 205
    :cond_27
    :goto_27
    if-nez p2, :cond_97

    .line 206
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v8, :cond_3b

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 208
    :cond_3b
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    invoke-virtual {v8, p4, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 213
    .local v7, view:Landroid/view/View;
    :goto_42
    :try_start_42
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mImageFieldId:I

    if-eqz v8, :cond_50

    .line 214
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mImageFieldId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    .line 215
    :cond_50
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mTextFieldId:I

    if-eqz v8, :cond_5e

    .line 216
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mTextFieldId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 217
    :cond_5e
    if-eqz v3, :cond_72

    .line 218
    const v8, 0x7f090026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 220
    if-eqz v1, :cond_72

    .line 221
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mCheckMode:Z

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_72} :catch_99

    .line 230
    :cond_72
    if-eqz v5, :cond_92

    .line 231
    if-eqz v4, :cond_7b

    .line 232
    iget-object v8, v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_7b
    if-eqz v6, :cond_82

    .line 235
    iget-object v8, v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_82
    iget-boolean v8, v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;->isDimmed:Z

    if-eqz v8, :cond_a9

    .line 238
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 239
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    :cond_92
    :goto_92
    return-object v7

    .line 201
    .end local v7           #view:Landroid/view/View;
    :cond_93
    const p4, 0x7f03000b

    goto :goto_27

    .line 210
    :cond_97
    move-object v7, p2

    .restart local v7       #view:Landroid/view/View;
    goto :goto_42

    .line 224
    :catch_99
    move-exception v2

    .line 225
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v8, "ArrayAdapter"

    const-string v9, "You must supply a resource ID for a TextView"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 227
    const-string v9, "ArrayAdapter requires the resource ID to be a TextView"

    .line 226
    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 242
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_a9
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 243
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_92
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$SubMenuAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
