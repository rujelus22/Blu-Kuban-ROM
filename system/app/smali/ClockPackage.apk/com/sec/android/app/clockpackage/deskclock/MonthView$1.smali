.class Lcom/sec/android/app/clockpackage/deskclock/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/MonthView;->init(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthView$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthView$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/MonthView;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/MonthView;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthView;->access$000(Lcom/sec/android/app/clockpackage/deskclock/MonthView;)Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->reloadCurrentDayEvents()V

    .line 289
    return-void
.end method
