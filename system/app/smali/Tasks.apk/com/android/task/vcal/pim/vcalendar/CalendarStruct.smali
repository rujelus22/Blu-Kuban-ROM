.class public Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;
    }
.end annotation


# instance fields
.field public timezone:Ljava/lang/String;

.field public todoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public addTodoList(Lcom/android/task/vcal/pim/vcalendar/CalendarStruct$TodoStruct;)V
    .registers 3
    .parameter "todo"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;->todoList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;->todoList:Ljava/util/List;

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/android/task/vcal/pim/vcalendar/CalendarStruct;->todoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
