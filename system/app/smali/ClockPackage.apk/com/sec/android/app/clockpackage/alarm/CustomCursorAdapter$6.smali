.class Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$6;
.super Ljava/lang/Object;
.source "CustomCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 348
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 351
    const-string v0, "CustomCursorAdapter"

    const-string v1, "leftside.setOnLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 356
    const v0, 0x7f020023

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    return v2
.end method
