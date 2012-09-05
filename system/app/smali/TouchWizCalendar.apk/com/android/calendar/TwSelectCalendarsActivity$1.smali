.class Lcom/android/calendar/TwSelectCalendarsActivity$1;
.super Ljava/lang/Object;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$1;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$1;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$000(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    .line 134
    .local v0, checked:Z
    :goto_d
    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$1;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$000(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$1;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v1, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->setAllItemChecked(Z)V

    .line 136
    return-void

    .line 133
    .end local v0           #checked:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method
