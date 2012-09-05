.class Lcom/sprint/smps/activities/AddressDetail$2$1;
.super Ljava/lang/Object;
.source "AddressDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddressDetail$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/AddressDetail$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddressDetail$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddressDetail$2$1;->this$1:Lcom/sprint/smps/activities/AddressDetail$2;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sprint/smps/activities/AddressDetail$2$1;->this$1:Lcom/sprint/smps/activities/AddressDetail$2;

    #getter for: Lcom/sprint/smps/activities/AddressDetail$2;->this$0:Lcom/sprint/smps/activities/AddressDetail;
    invoke-static {v0}, Lcom/sprint/smps/activities/AddressDetail$2;->access$0(Lcom/sprint/smps/activities/AddressDetail$2;)Lcom/sprint/smps/activities/AddressDetail;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/AddressDetail;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/AddressDetail;->access$3(Lcom/sprint/smps/activities/AddressDetail;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 148
    const-string v0, "View Address Book"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddAddress;->dismissActivities(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData:Z

    .line 151
    :cond_14
    return-void
.end method
