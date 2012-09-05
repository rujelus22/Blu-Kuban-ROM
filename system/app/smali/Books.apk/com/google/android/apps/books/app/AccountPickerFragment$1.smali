.class Lcom/google/android/apps/books/app/AccountPickerFragment$1;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$1;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$1;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/books/app/AccountPickerFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/AccountPickerFragment$1$1;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/AccountUtils;->showAddAccount(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
