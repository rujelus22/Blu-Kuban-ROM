.class Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$1;
.super Ljava/lang/Object;
.source "UpdateIntervalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$1;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity$1;->this$0:Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;

    #calls: Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->onOptionClicked(I)V
    invoke-static {v0, p2}, Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;->access$000(Lcom/google/android/apps/googlevoice/UpdateIntervalActivity;I)V

    .line 63
    return-void
.end method
