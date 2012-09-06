.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$28;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$28;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2615
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$28;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionable:Ljava/lang/Boolean;

    .line 2616
    return-void
.end method
