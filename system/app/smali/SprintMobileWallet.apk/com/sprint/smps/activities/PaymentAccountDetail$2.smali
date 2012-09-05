.class Lcom/sprint/smps/activities/PaymentAccountDetail$2;
.super Ljava/lang/Object;
.source "PaymentAccountDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/PaymentAccountDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

.field private final synthetic val$cntxt:Landroid/content/Context;

.field private final synthetic val$fTitle:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/PaymentAccountDetail;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    iput-object p2, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$cntxt:Landroid/content/Context;

    iput-object p3, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$fTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$message:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/PaymentAccountDetail$2;)Lcom/sprint/smps/activities/PaymentAccountDetail;
    .registers 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$cntxt:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$fTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/PaymentAccountDetail$2$1;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/PaymentAccountDetail$2$1;-><init>(Lcom/sprint/smps/activities/PaymentAccountDetail$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method
