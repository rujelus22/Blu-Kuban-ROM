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

.field private mTriggered:Z


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter "fragment"
    .parameter "triggered"

    .prologue
    .line 2328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    .line 2329
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 2330
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    .line 2331
    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter "emailAddress"

    .prologue
    .line 2334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2335
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
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
    .line 2341
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
    .registers 8
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
    const/4 v4, 0x1

    const v3, 0x7f0c014c

    .line 2347
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2349
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_57

    .line 2352
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 2353
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2355
    :cond_1f
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v3, :cond_2f

    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v3, :cond_4b

    .line 2357
    :cond_2f
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2359
    .local v0, resize:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2372
    .end local v0           #resize:Landroid/graphics/Bitmap;
    :goto_3e
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    if-eqz v1, :cond_4a

    .line 2373
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()Z
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mTriggered:Z

    .line 2375
    :cond_4a
    return-void

    .line 2361
    :cond_4b
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3e

    .line 2365
    :cond_57
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v1

    if-ne v1, v4, :cond_69

    .line 2366
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 2368
    :cond_69
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto :goto_3e
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2317
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
    .line 2379
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    return-void
.end method
