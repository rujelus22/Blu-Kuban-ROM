.class public Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;
.super Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;
.source "SocialHubComposeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComposeDialogAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 126
    .local p4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    .line 127
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 128
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 15
    .parameter "view"
    .parameter "position"

    .prologue
    const v11, 0x7f060050

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;

    .line 134
    .local v1, holder:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 136
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailColorbar:Lcom/sec/android/socialhub/view/ListColorView;

    invoke-virtual {v7, v10}, Lcom/sec/android/socialhub/view/ListColorView;->setVisibility(I)V

    .line 138
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailAddr:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    iget-object v8, v8, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    const-string v8, "2_Email"

    const-string v7, "Type"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    const-string v8, "3_SevenEmail"

    const-string v7, "Type"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 142
    :cond_4d
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailColorbar:Lcom/sec/android/socialhub/view/ListColorView;

    invoke-virtual {v7, v9}, Lcom/sec/android/socialhub/view/ListColorView;->setVisibility(I)V

    .line 143
    iget-object v8, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailColorbar:Lcom/sec/android/socialhub/view/ListColorView;

    const-string v7, "ID"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 145
    :cond_63
    const-string v7, "Account"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 146
    .local v6, sp_name:Ljava/lang/String;
    const-string v7, "Email"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, email:Ljava/lang/String;
    const-string v7, "Icon"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 149
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const-string v7, "Premium"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 151
    .local v4, premium_icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8a

    .line 153
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :cond_8a
    const-string v8, "4_SevenIM"

    const-string v7, "Type"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 158
    const-string v7, "Presence"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 159
    .local v5, presence:I
    const/4 v7, 0x7

    if-ne v5, v7, :cond_d2

    .line 160
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailAddr:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    iget-object v8, v8, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .end local v5           #presence:I
    :cond_bd
    :goto_bd
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mPremiumIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mSPName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailAddr:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void

    .line 162
    .restart local v5       #presence:I
    :cond_d2
    iget-object v7, v1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;->mEmailAddr:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    iget-object v8, v8, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_bd
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "group"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;-><init>(Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;Landroid/view/View;)V

    .line 175
    .local v0, holder:Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter$ComposeHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    return-object v1
.end method
