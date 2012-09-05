.class final Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState$1;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;
    .registers 4
    .parameter "in"

    .prologue
    .line 407
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;-><init>(Landroid/os/Parcel;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;
    .registers 3
    .parameter "size"

    .prologue
    .line 411
    new-array v0, p1, [Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState$1;->newArray(I)[Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView$SavedCheckState;

    move-result-object v0

    return-object v0
.end method
