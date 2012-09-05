.class Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;
.super Ljava/lang/Object;
.source "AlarmDelete.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListCheckState(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method
