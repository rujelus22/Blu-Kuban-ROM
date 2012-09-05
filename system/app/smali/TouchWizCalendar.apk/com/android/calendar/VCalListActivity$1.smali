.class Lcom/android/calendar/VCalListActivity$1;
.super Ljava/lang/Object;
.source "VCalListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$1;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    const-string v0, "CALENDAR_TYPE"

    iget-object v2, p0, Lcom/android/calendar/VCalListActivity$1;->this$0:Lcom/android/calendar/VCalListActivity;

    #getter for: Lcom/android/calendar/VCalListActivity;->mCalendarType:I
    invoke-static {v2}, Lcom/android/calendar/VCalListActivity;->access$000(Lcom/android/calendar/VCalListActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v2, "VCAL_DATA"

    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$1;->this$0:Lcom/android/calendar/VCalListActivity;

    #getter for: Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$100(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 424
    const-string v0, "VCAL_POSITION"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$1;->this$0:Lcom/android/calendar/VCalListActivity;

    const-class v2, Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/high16 v0, 0x2002

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$1;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method
