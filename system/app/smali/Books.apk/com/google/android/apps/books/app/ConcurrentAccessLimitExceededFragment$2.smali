.class Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;
.super Ljava/lang/Object;
.source "ConcurrentAccessLimitExceededFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;->getInfoUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, infoUrl:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->dismiss()V

    .line 67
    return-void
.end method
