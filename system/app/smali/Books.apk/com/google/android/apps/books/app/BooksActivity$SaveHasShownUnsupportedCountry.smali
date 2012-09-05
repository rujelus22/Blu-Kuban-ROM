.class final Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveHasShownUnsupportedCountry"
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
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1733
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1733
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 1736
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$SaveHasShownUnsupportedCountry;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 1737
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setHasShownUnsupportedCountryWarning(Z)V

    .line 1738
    const/4 v1, 0x0

    return-object v1
.end method
