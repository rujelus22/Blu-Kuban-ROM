.class Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$5;
.super Ljava/lang/Object;
.source "CustomCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 331
    const-string v0, "CustomCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftside.setOnTouchListener event.getAction() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 335
    const v0, 0x7f0202d5

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 344
    :cond_33
    :goto_33
    return v3

    .line 337
    :cond_34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 338
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 341
    const v0, 0x7f020023

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_33
.end method
