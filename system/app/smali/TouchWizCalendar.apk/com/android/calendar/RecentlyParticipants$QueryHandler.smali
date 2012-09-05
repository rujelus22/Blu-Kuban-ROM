.class Lcom/android/calendar/RecentlyParticipants$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/RecentlyParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method public constructor <init>(Lcom/android/calendar/RecentlyParticipants;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    .line 183
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 193
    if-eqz p3, :cond_2e

    .line 195
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-virtual {v0}, Lcom/android/calendar/RecentlyParticipants;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 197
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$000(Lcom/android/calendar/RecentlyParticipants;)Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 201
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2f

    .line 203
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$100(Lcom/android/calendar/RecentlyParticipants;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEmpty:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$200(Lcom/android/calendar/RecentlyParticipants;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_2e
    :goto_2e
    return-void

    .line 209
    :cond_2f
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$100(Lcom/android/calendar/RecentlyParticipants;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->this$0:Lcom/android/calendar/RecentlyParticipants;

    #getter for: Lcom/android/calendar/RecentlyParticipants;->mEmpty:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/RecentlyParticipants;->access$200(Lcom/android/calendar/RecentlyParticipants;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 217
    :cond_42
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2e
.end method
