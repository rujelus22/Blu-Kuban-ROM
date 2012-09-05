.class Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;
.super Ljava/lang/Object;
.source "AbstractUpnpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    const-class v3, Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
