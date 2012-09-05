.class Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;
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

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->val$c:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mChiceListItemIndex:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$202(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;I)I

    .line 296
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 297
    const-string v0, "CustomCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftside.setOnClickListener onClick mToggleLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->mToggleLock:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$100(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_36
    const v0, 0x7f0202d5

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    const-string v1, "alarm_edit"

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$3;->position:I

    #calls: Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->startDetailView(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$500(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;Ljava/lang/String;I)V

    .line 301
    return-void
.end method
