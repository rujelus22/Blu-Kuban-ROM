.class Lcom/android/calendar/EventInfoActivity$6;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->updateResponse()V
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
    .line 3148
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$6;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$6;->this$0:Lcom/android/calendar/EventInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->showDialog(I)V

    .line 3151
    return-void
.end method
