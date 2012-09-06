.class Lcom/google/android/apps/googlevoice/LoginActivity$3;
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
    .line 263
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$3;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$3;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    .line 268
    return-void
.end method
