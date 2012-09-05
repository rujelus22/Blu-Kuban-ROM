.class Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$500(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$300(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V

    .line 118
    return-void
.end method
