.class Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$3;
.super Ljava/lang/Object;
.source "AbstractUpnpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 132
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->finish()V

    .line 134
    return-void
.end method
