.class Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactStatusLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragment:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 707
    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter "emailAddress"

    .prologue
    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v2, "email"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/ContactStatusLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V
    .registers 7
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 724
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v2

    if-ne v2, v0, :cond_3f

    .line 726
    .local v0, triggered:Z
    :goto_a
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x2

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$202(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    .line 727
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$302(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    .line 729
    invoke-virtual {p2}, Lcom/android/email/activity/ContactStatusLoader$Result;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 730
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    :goto_28
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_37

    .line 736
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    :cond_37
    if-eqz v0, :cond_3e

    .line 739
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$600(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 741
    :cond_3e
    return-void

    .end local v0           #triggered:Z
    :cond_3f
    move v0, v1

    .line 724
    goto :goto_a

    .line 732
    .restart local v0       #triggered:Z
    :cond_41
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 700
    check-cast p2, Lcom/android/email/activity/ContactStatusLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    return-void
.end method
