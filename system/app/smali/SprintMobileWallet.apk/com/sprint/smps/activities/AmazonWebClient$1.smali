.class Lcom/sprint/smps/activities/AmazonWebClient$1;
.super Ljava/lang/Object;
.source "AmazonWebClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AmazonWebClient;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AmazonWebClient;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AmazonWebClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AmazonWebClient$1;->this$0:Lcom/sprint/smps/activities/AmazonWebClient;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    const-string v0, "View Payment Options"

    invoke-static {v0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->dismissActivities(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 138
    return-void
.end method
