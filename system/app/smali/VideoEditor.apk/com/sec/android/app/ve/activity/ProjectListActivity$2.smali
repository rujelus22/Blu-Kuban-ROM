.class Lcom/sec/android/app/ve/activity/ProjectListActivity$2;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/DragLayer$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$2;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1847
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1844
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 1841
    return-void
.end method
