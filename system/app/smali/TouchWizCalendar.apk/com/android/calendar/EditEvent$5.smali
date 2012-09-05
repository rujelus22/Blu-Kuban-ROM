.class Lcom/android/calendar/EditEvent$5;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->showTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1048
    const/16 v0, 0x17

    if-eq p2, v0, :cond_8

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1f

    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 1050
    iget-object v0, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    #calls: Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2000(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    .line 1051
    const/4 v0, 0x1

    .line 1053
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
