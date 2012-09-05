.class Lcom/android/calendar/EditEvent$4;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1040
    iput-object p1, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$4;->val$lv:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/calendar/EditEvent$4;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$4;->val$lv:Landroid/widget/ListView;

    #calls: Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2000(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    .line 1043
    return-void
.end method
