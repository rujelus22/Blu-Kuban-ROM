.class Lcom/sprint/smps/activities/MainMenu$1;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/MainMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/MainMenu;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/MainMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/MainMenu$1;->this$0:Lcom/sprint/smps/activities/MainMenu;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "item"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_54

    .line 77
    :goto_7
    if-eqz v0, :cond_10

    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sprint/smps/activities/MainMenu;->startActivity(Landroid/content/Intent;)V

    .line 78
    :cond_10
    return-void

    .line 65
    :pswitch_11
    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const-class v3, Lcom/sprint/smps/activities/ViewPaymentOptions;

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    goto :goto_7

    .line 68
    :pswitch_20
    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-class v3, Lcom/sprint/smps/activities/ViewMyTransactions;

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    goto :goto_7

    .line 71
    :pswitch_31
    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const-class v3, Lcom/sprint/smps/activities/ViewAddressBook;

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    goto :goto_7

    .line 74
    :pswitch_42
    invoke-static {}, Lcom/sprint/smps/activities/MainMenu;->access$0()Lcom/sprint/smps/activities/MainMenu;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    const-class v3, Lcom/sprint/smps/activities/Profile;

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_7

    .line 62
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_11
        :pswitch_20
        :pswitch_31
        :pswitch_42
    .end packed-switch
.end method
