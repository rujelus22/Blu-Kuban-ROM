.class Lcom/android/email/activity/MessageCompose$9;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 2276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2278
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0805b4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2279
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0805c5

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2280
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$9$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$9$1;-><init>(Lcom/android/email/activity/MessageCompose$9;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2301
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$9$2;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageCompose$9$2;-><init>(Lcom/android/email/activity/MessageCompose$9;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2312
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2313
    return-void
.end method
