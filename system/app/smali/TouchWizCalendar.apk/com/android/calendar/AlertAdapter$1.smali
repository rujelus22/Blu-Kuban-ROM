.class Lcom/android/calendar/AlertAdapter$1;
.super Ljava/lang/Object;
.source "AlertAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;JJZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertAdapter;

.field final synthetic val$ID:J


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertAdapter;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iput-wide p2, p0, Lcom/android/calendar/AlertAdapter$1;->val$ID:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    if-eqz v1, :cond_39

    .line 143
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    iget-wide v5, p0, Lcom/android/calendar/AlertAdapter$1;->val$ID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v1}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v0

    .line 144
    .local v0, Flag:Z
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    iget-wide v5, p0, Lcom/android/calendar/AlertAdapter$1;->val$ID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AlertAdapter$AlertItem;

    if-nez v0, :cond_4b

    move v2, v3

    :goto_2f
    invoke-virtual {v1, v2}, Lcom/android/calendar/AlertAdapter$AlertItem;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AlertActivity;->updateAllCheckState()V

    .line 147
    .end local v0           #Flag:Z
    :cond_39
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AlertActivity;->isAnyOneSelected()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 148
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1, v3}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    .line 151
    :goto_4a
    return-void

    .restart local v0       #Flag:Z
    :cond_4b
    move v2, v4

    .line 144
    goto :goto_2f

    .line 150
    .end local v0           #Flag:Z
    :cond_4d
    iget-object v1, p0, Lcom/android/calendar/AlertAdapter$1;->this$0:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->alertActivity:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v1, v4}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    goto :goto_4a
.end method
