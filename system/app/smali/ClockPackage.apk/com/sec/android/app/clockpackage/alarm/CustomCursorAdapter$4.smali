.class Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;
.super Ljava/lang/Object;
.source "CustomCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

.field final synthetic val$activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->val$activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x1

    .line 306
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 307
    const-string v0, "CustomCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftside.setOnFocusChangeListener alarm_list_left_column view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$200(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$202(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;I)I

    .line 312
    const-string v0, "CustomCursorAdapter"

    const-string v1, "if (mChiceListItemIndex == 2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->val$activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setSelected(Z)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->val$activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->setPressed(Z)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$4;->val$activeButton:Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->requestFocus()Z

    .line 325
    :goto_4e
    return-void

    .line 318
    :cond_4f
    if-eqz p2, :cond_5b

    .line 319
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 320
    const v0, 0x7f0202d2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4e

    .line 322
    :cond_5b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 323
    const v0, 0x7f020023

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4e
.end method
