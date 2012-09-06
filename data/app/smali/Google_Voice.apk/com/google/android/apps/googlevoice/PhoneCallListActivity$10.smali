.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$10;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$10;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$10;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 966
    return-void
.end method
