.class Lcom/sprint/smps/activities/DeleteSMPSAccount$2$1;
.super Ljava/lang/Object;
.source "DeleteSMPSAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/DeleteSMPSAccount$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/DeleteSMPSAccount$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/DeleteSMPSAccount$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$2$1;->this$1:Lcom/sprint/smps/activities/DeleteSMPSAccount$2;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$2$1;->this$1:Lcom/sprint/smps/activities/DeleteSMPSAccount$2;

    #getter for: Lcom/sprint/smps/activities/DeleteSMPSAccount$2;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;
    invoke-static {v0}, Lcom/sprint/smps/activities/DeleteSMPSAccount$2;->access$0(Lcom/sprint/smps/activities/DeleteSMPSAccount$2;)Lcom/sprint/smps/activities/DeleteSMPSAccount;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/DeleteSMPSAccount;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$3(Lcom/sprint/smps/activities/DeleteSMPSAccount;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 135
    const-string v0, ""

    invoke-static {v0}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->dismissActivities(Ljava/lang/String;)V

    .line 137
    :cond_11
    return-void
.end method
