.class Lcom/sprint/smps/activities/AddAddress$4;
.super Ljava/lang/Object;
.source "AddAddress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddAddress;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddAddress$4;->this$0:Lcom/sprint/smps/activities/AddAddress;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 230
    const-string v0, "View Address Book"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddAddress;->dismissActivities(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData:Z

    .line 232
    return-void
.end method
