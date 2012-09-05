.class Lcom/android/calendar/RecentlyParticipants$1;
.super Ljava/lang/Object;
.source "RecentlyParticipants.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/RecentlyParticipants;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method constructor <init>(Lcom/android/calendar/RecentlyParticipants;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 257
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;
    invoke-static {v4}, Lcom/android/calendar/RecentlyParticipants;->access$000(Lcom/android/calendar/RecentlyParticipants;)Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 259
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 263
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v3, result:Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 267
    .local v1, eventId:J
    const-string v4, "EVENT_ID"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 269
    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/calendar/RecentlyParticipants;->setResult(ILandroid/content/Intent;)V

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants$1;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-virtual {v4}, Lcom/android/calendar/RecentlyParticipants;->finish()V

    .line 275
    return-void
.end method
