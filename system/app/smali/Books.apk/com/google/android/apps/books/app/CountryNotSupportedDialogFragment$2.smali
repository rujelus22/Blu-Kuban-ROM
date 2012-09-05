.class Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$2;
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
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/CountryNotSupportedDialogFragment;->dismiss()V

    .line 52
    return-void
.end method
