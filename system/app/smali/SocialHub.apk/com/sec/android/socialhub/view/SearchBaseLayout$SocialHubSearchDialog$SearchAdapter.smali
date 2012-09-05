.class public Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;
.super Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;
.source "SearchBaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 447
    .local p4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    .line 448
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 449
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 9
    .parameter "view"
    .parameter "position"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;

    .line 455
    .local v0, holder:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 457
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 459
    .local v2, resource:Ljava/lang/Integer;
    iget-object v3, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v3, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;->this$1:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    #getter for: Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->access$100(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09000a

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 462
    return-void
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "group"

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 467
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;Landroid/view/View;)V

    .line 468
    .local v0, holder:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    return-object v1
.end method
