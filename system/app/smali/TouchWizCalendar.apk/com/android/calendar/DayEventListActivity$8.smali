.class Lcom/android/calendar/DayEventListActivity$8;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$8;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity$8;->this$0:Lcom/android/calendar/DayEventListActivity;

    iget-object v2, v2, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 293
    .local v0, list:Lcom/android/calendar/DayEventListView;
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity$8;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0, v5}, Lcom/android/calendar/DayEventListView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 295
    return-void
.end method
