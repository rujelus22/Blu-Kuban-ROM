.class Lcom/sprint/smps/activities/EditPaymentAccount$4;
.super Ljava/lang/Object;
.source "EditPaymentAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditPaymentAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditPaymentAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditPaymentAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditPaymentAccount$4;->this$0:Lcom/sprint/smps/activities/EditPaymentAccount;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 287
    const-string v0, "View Payment Options"

    invoke-static {v0}, Lcom/sprint/smps/activities/EditPaymentAccount;->dismissActivities(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 289
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 290
    return-void
.end method
