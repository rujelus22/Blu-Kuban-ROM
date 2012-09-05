.class Lcom/android/calendar/EditEvent$61;
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
    .line 2946
    iput-object p1, p0, Lcom/android/calendar/EditEvent$61;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    .line 2949
    iget-object v3, p0, Lcom/android/calendar/EditEvent$61;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->isExchangeCalendar()Z
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$7500(Lcom/android/calendar/EditEvent;)Z

    move-result v1

    .line 2950
    .local v1, isExchange:Z
    iget-object v3, p0, Lcom/android/calendar/EditEvent$61;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->getExchangeCal()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$7600(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v0

    .line 2952
    .local v0, aync_email:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2953
    .local v2, newIntent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "email-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2954
    const-string v3, "app"

    const-string v4, "calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2955
    if-eqz v1, :cond_28

    .line 2956
    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2958
    :cond_28
    iget-object v3, p0, Lcom/android/calendar/EditEvent$61;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2959
    return-void
.end method
