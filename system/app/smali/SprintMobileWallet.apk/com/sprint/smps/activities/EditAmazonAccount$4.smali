.class Lcom/sprint/smps/activities/EditAmazonAccount$4;
.super Ljava/lang/Object;
.source "EditAmazonAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditAmazonAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditAmazonAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditAmazonAccount$4;->this$0:Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 188
    const-string v0, "View Payment Options"

    invoke-static {v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->dismissActivities(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 191
    return-void
.end method
