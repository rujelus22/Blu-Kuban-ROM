.class Lcom/android/calendar/event/EditEventFragment$1;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$1;->this$0:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lcom/android/calendar/event/EditEventFragment;->onActionBarItemSelected(I)Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventFragment;->access$000(Lcom/android/calendar/event/EditEventFragment;I)Z

    .line 128
    return-void
.end method
