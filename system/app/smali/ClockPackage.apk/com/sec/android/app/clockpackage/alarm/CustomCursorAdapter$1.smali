.class Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;
.super Ljava/lang/Object;
.source "CustomCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

.field final synthetic val$active:I

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Landroid/database/Cursor;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->val$c:Landroid/database/Cursor;

    iput p3, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->val$active:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    .line 170
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 171
    const-string v4, "CustomCursorAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list item toggle button click. mToggleLock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z
    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$100(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_31
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$100(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    const/4 v5, 0x2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I
    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$202(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;I)I

    .line 179
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 180
    const-string v5, "CustomCursorAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "if (((CenterToggleButton) view).isChecked() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->isChecked()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, "CustomCursorAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->val$active:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_82
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z
    invoke-static {v4, v8}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$102(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Z)Z

    .line 185
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iget v6, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->position:I

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->isChecked()Z

    move-result v4

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->val$active:I

    #calls: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setAlarmActive(IZI)V
    invoke-static {v5, v6, v4, v7}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$300(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;IZI)V

    .line 187
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 203
    .end local p1
    :goto_9a
    return-void

    .line 189
    .restart local p1
    :cond_9b
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 190
    const-string v4, "CustomCursorAdapter"

    const-string v5, "activeButton.setOnClickListener } else {"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_a8
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$400(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 193
    .local v3, origPosition:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$400(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Landroid/database/Cursor;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->position:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$400(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    .line 195
    .local v2, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    iget v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 196
    .local v0, current:I
    const/4 v1, 0x1

    .line 197
    .local v1, currentActive:Z
    if-nez v0, :cond_cd

    .line 198
    const/4 v1, 0x0

    .line 200
    :cond_cd
    check-cast p1, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setChecked(Z)V

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$400(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_9a
.end method
