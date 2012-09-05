.class Lcom/android/calendar/EditEvent$59;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 2918
    iput-object p1, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2921
    iget-object v0, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    .line 2933
    :goto_e
    return-void

    .line 2928
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2929
    iget-object v1, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mLocationEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$7000(Lcom/android/calendar/EditEvent;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2930
    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2931
    iget-object v1, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    const-class v2, Lcom/android/calendar/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2932
    iget-object v1, p0, Lcom/android/calendar/EditEvent$59;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e
.end method
