.class Lcom/google/android/apps/googlevoice/CallRoutingActivity$1;
.super Ljava/lang/Object;
.source "CallRoutingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallRoutingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallRoutingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallRoutingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity$1;->this$0:Lcom/google/android/apps/googlevoice/CallRoutingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRoutingActivity$1;->this$0:Lcom/google/android/apps/googlevoice/CallRoutingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallRoutingActivity;->onOptionClicked(I)V
    invoke-static {v0, p2}, Lcom/google/android/apps/googlevoice/CallRoutingActivity;->access$000(Lcom/google/android/apps/googlevoice/CallRoutingActivity;I)V

    .line 60
    return-void
.end method
