.class Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VRDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageDialogAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLi:Landroid/view/LayoutInflater;

.field private mResId:I

.field private mTextColorNormal:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 141
    iput p2, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mResId:I

    .line 142
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mLi:Landroid/view/LayoutInflater;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mTextColorNormal:Landroid/content/res/ColorStateList;

    .line 144
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xc8

    .line 153
    if-nez p2, :cond_e

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mLi:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mResId:I

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 156
    :cond_e
    const v3, 0x7f090032

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 157
    .local v0, cTxtView:Landroid/widget/CheckedTextView;
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->mTextColorNormal:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    if-nez p1, :cond_34

    .line 162
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$000()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 171
    :cond_33
    :goto_33
    return-object v0

    .line 164
    :cond_34
    if-ne p1, v1, :cond_33

    .line 165
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$000()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v3

    if-nez v3, :cond_5b

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 168
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_33

    :cond_5b
    move v1, v2

    .line 166
    goto :goto_4a
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 177
    if-nez p1, :cond_4

    .line 189
    :cond_3
    :goto_3
    return v0

    .line 184
    :cond_4
    if-ne p1, v0, :cond_3

    .line 185
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getExternalStorageStateSd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method
