.class Lcom/android/calendar/EventListActivity$2;
.super Ljava/lang/Object;
.source "EventListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/calendar/EventListActivity$2;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$2;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity;->finish()V

    .line 363
    return-void
.end method
