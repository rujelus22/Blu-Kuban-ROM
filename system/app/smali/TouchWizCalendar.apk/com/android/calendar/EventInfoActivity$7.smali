.class Lcom/android/calendar/EventInfoActivity$7;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Lcom/android/calendar/EventInfoScrollView$OnFlingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->makeView()Landroid/view/View;
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
    .line 3340
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$7;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Z)V
    .registers 3
    .parameter "forward"

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$7;->this$0:Lcom/android/calendar/EventInfoActivity;

    #calls: Lcom/android/calendar/EventInfoActivity;->goTo(Z)V
    invoke-static {v0, p1}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    .line 3344
    return-void
.end method
