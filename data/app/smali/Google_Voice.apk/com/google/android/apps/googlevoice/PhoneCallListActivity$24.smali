.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$24;
.super Ljava/lang/Object;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1088
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$24;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "buttonId"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$24;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendNativeSMS()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1092
    return-void
.end method
