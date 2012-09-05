.class Lcom/android/email/activity/MessageCompose$42;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V
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
    .line 11575
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$42;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 11580
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$42;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$12402(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 11582
    return-void
.end method
