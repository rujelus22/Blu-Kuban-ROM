.class Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;
.super Ljava/lang/Object;
.source "CountryNotSupportedDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 40
    iget-object v3, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/OceanUris;->getInternationalAvailabilityUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, helpUrl:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
