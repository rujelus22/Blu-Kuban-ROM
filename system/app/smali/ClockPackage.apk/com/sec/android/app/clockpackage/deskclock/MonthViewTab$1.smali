.class Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$1;
.super Ljava/lang/Object;
.source "MonthViewTab.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->init(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->reloadCurrentDayEvents()V

    .line 286
    return-void
.end method
