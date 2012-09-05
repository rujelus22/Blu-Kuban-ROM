.class Lcom/android/calendar/EventInfoActivity$5;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2840
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$5;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 2842
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 2843
    .local v0, attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    iget-object v2, v0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 2848
    :goto_a
    return-void

    .line 2845
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2846
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2847
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$5;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/EventInfoActivity;->showContactInfo(Lcom/android/calendar/EventInfoActivity$Attendee;Landroid/graphics/Rect;)V

    goto :goto_a
.end method
