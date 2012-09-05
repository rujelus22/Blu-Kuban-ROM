.class Lcom/android/calendar/MonthActivity$10;
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
    .line 1192
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$10;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$10;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthInterface;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/calendar/MonthInterface;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v0

    .line 1195
    .local v0, other:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$10;->this$0:Lcom/android/calendar/MonthActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 1196
    return-void
.end method
