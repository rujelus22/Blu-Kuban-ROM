.class public Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;
.super Ljava/lang/Object;
.source "SocialHubComposeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComposeHolder"
.end annotation


# instance fields
.field public mEmailAddr:Landroid/widget/TextView;

.field public mEmailColorbar:Lcom/sec/android/socialhub/view/ListColorView;

.field public mEmailLayout:Landroid/widget/LinearLayout;

.field public mIcon:Landroid/widget/ImageView;

.field public mPremiumIcon:Landroid/widget/ImageView;

.field public mSPName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->this$1:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const v0, 0x7f0b010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mIcon:Landroid/widget/ImageView;

    .line 193
    const v0, 0x7f0b010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mSPName:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0b0110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mPremiumIcon:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f0b0111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailAddr:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0b010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailLayout:Landroid/widget/LinearLayout;

    .line 197
    const v0, 0x7f0b010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/ListColorView;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailColorbar:Lcom/sec/android/socialhub/view/ListColorView;

    .line 198
    return-void
.end method
