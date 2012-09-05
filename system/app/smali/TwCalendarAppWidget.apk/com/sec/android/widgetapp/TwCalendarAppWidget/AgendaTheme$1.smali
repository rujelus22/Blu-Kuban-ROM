.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme$1;
.super Ljava/lang/Object;
.source "AgendaTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->launchEditEvent(Landroid/content/Context;)V

    .line 66
    return-void
.end method
