.class public Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;
.super Ljava/lang/Object;
.source "SocialHubAbsUploadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadHolder"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;->this$1:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;->mImageView:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;->mTextView:Landroid/widget/TextView;

    .line 300
    return-void
.end method
