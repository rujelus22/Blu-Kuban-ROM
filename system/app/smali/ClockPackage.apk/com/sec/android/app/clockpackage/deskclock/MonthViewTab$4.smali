.class Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;
.super Ljava/lang/Object;
.source "MonthViewTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->reloadEvents2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$302(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->calEventDay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$400(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V

    .line 560
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$202(Z)Z

    .line 561
    const-string v0, "MonthViewTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->reloadCurrentDayEvents()V

    .line 565
    return-void
.end method
