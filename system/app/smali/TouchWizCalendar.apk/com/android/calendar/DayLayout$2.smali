.class Lcom/android/calendar/DayLayout$2;
.super Ljava/lang/Object;
.source "DayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayLayout;->reloadEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayLayout;

.field final synthetic val$doScroll:Z

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayLayout;Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/calendar/DayLayout$2;->this$0:Lcom/android/calendar/DayLayout;

    iput-object p2, p0, Lcom/android/calendar/DayLayout$2;->val$events:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/calendar/DayLayout$2;->val$doScroll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/DayLayout$2;->this$0:Lcom/android/calendar/DayLayout;

    iget-object v1, p0, Lcom/android/calendar/DayLayout$2;->val$events:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/calendar/DayLayout$2;->val$doScroll:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayLayout;->reloadCompleted(Ljava/util/ArrayList;Z)V

    .line 361
    return-void
.end method
