.class public interface abstract Lcom/android/calendar/MonthInterface;
.super Ljava/lang/Object;
.source "MonthInterface.java"


# virtual methods
.method public abstract getPrevNextTime(I)Landroid/text/format/Time;
.end method

.method public abstract getSelectedDate()Landroid/text/format/Time;
.end method

.method public abstract getSelectedMillis()J
.end method

.method public abstract getSelectedTime()Landroid/text/format/Time;
.end method

.method public abstract getTime()Landroid/text/format/Time;
.end method

.method public abstract restoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract saveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract setSelectedTime(Landroid/text/format/Time;)V
.end method
