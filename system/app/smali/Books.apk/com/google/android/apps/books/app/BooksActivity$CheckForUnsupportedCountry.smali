.class final Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForUnsupportedCountry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mShouldShowWarningDialog:Z

.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->mShouldShowWarningDialog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1698
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1698
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "voids"

    .prologue
    const/4 v2, 0x0

    .line 1703
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->isInSupportedCountry(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1711
    :cond_9
    :goto_9
    return-object v2

    .line 1707
    :cond_a
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getHasShownUnsupportedCountryWarning()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1709
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->mShouldShowWarningDialog:Z

    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1698
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1716
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->mShouldShowWarningDialog:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->isDestroyed()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mHasShownUnsupportedCountryDialog:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$3400(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1718
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1719
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1720
    const-class v1, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    const-string v2, "countryNotSupported"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 1722
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1726
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mHasShownUnsupportedCountryDialog:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$3402(Lcom/google/android/apps/books/app/BooksActivity;Z)Z

    .line 1728
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$CheckForUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1730
    :cond_41
    return-void
.end method
