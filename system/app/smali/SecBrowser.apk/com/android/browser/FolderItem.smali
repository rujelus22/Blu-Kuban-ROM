.class Lcom/android/browser/FolderItem;
.super Landroid/widget/LinearLayout;
.source "FolderItem.java"


# instance fields
.field protected mFolder:I

.field protected mImageView:Landroid/widget/ImageView;

.field protected mParent:I

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f040021

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/android/browser/FolderItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0d0004

    invoke-virtual {p0, v1}, Lcom/android/browser/FolderItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/FolderItem;->mImageView:Landroid/widget/ImageView;

    .line 50
    return-void
.end method


# virtual methods
.method getFolder()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/browser/FolderItem;->mFolder:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setFolder(I)V
    .registers 2
    .parameter "folder"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/browser/FolderItem;->mFolder:I

    .line 105
    return-void
.end method

.method setFolderParent(I)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/browser/FolderItem;->mParent:I

    .line 110
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/FolderItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
