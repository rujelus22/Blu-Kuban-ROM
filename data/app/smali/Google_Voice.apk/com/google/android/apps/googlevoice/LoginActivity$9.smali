.class Lcom/google/android/apps/googlevoice/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$9;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$9;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->stopOnFailure(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$600(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/content/DialogInterface;)V

    .line 356
    return-void
.end method
