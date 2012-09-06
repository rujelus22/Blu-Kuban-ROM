.class Lcom/android/calendar/alerts/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 205
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 206
    invoke-virtual {v0, p2}, Lcom/android/calendar/alerts/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #calls: Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V
    invoke-static {v2, v3, v4}, Lcom/android/calendar/alerts/AlertActivity;->access$500(Lcom/android/calendar/alerts/AlertActivity;J)V

    .line 211
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 212
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 213
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    sget-object v8, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "events/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const-class v3, Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 219
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    const-string v2, "endTime"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    .line 224
    return-void
.end method
