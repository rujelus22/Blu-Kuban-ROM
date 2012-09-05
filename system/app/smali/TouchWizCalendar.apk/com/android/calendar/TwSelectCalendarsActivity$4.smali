.class Lcom/android/calendar/TwSelectCalendarsActivity$4;
.super Ljava/lang/Object;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$4;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$4;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #calls: Lcom/android/calendar/TwSelectCalendarsActivity;->initAllCheckState()V
    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$500(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    .line 210
    return-void
.end method
