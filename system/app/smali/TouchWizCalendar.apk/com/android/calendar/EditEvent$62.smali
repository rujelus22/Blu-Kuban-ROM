.class Lcom/android/calendar/EditEvent$62;
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
    .line 2975
    iput-object p1, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 2978
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    const-class v2, Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2980
    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_78

    .line 2982
    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarPosition:I
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$7700(Lcom/android/calendar/EditEvent;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2984
    :try_start_44
    const-string v0, "_id"

    iget-object v2, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$6400(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_54} :catch_5c

    .line 2997
    :goto_54
    iget-object v0, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2998
    return-void

    .line 2986
    :catch_5c
    move-exception v0

    .line 2987
    const-string v2, "_id"

    iget-object v3, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarId:I
    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$7800(Lcom/android/calendar/EditEvent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2988
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 2991
    :cond_6c
    const-string v0, "_id"

    iget-object v2, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarId:I
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$7800(Lcom/android/calendar/EditEvent;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_54

    .line 2994
    :cond_78
    const-string v0, "_id"

    iget-object v2, p0, Lcom/android/calendar/EditEvent$62;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mCalendarId:I
    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$7800(Lcom/android/calendar/EditEvent;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_54
.end method
