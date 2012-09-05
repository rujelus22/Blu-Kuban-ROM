.class public Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchHolder"
.end annotation


# instance fields
.field public mTextView:Landroid/widget/TextView;

.field final synthetic this$2:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;->this$2:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter$SearchHolder;->mTextView:Landroid/widget/TextView;

    .line 479
    return-void
.end method
