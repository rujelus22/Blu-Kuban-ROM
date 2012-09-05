.class public Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;
.super Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;
.source "SocialHubAbsUploadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resource_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    .line 271
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 272
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 7
    .parameter "view"
    .parameter "position"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;

    .line 277
    .local v0, holder:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 279
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;->mImageView:Landroid/widget/ImageView;

    const-string v2, "image"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;->mTextView:Landroid/widget/TextView;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 281
    return-void
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "group"

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;-><init>(Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter;Landroid/view/View;)V

    .line 287
    .local v0, holder:Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog$UploadAdapter$UploadHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    return-object v1
.end method
