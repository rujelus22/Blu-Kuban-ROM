.class Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;
.super Ljava/lang/Object;
.source "SyncDisabledDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    #calls: Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->markHaveNagged()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->access$000(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    .line 56
    return-void
.end method
