.class Lcom/android/calendar/MonthActivity$13;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$13;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$13;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->getSelectedTime()J

    move-result-wide v0

    .line 1239
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    .line 1240
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    iget-object v5, p0, Lcom/android/calendar/MonthActivity$13;->this$0:Lcom/android/calendar/MonthActivity;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1243
    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1245
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$13;->this$0:Lcom/android/calendar/MonthActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/android/calendar/MonthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1247
    return-void
.end method
