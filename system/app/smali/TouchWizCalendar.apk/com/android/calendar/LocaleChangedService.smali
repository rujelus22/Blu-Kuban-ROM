.class public Lcom/android/calendar/LocaleChangedService;
.super Landroid/app/Service;
.source "LocaleChangedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/LocaleChangedService$TimezoneLoader;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field timezoneThread:Lcom/android/calendar/LocaleChangedService$TimezoneLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/LocaleChangedService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/LocaleChangedService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/LocaleChangedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LocaleChangedService;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 37
    new-instance v0, Lcom/android/calendar/LocaleChangedService$TimezoneLoader;

    invoke-direct {v0, p0}, Lcom/android/calendar/LocaleChangedService$TimezoneLoader;-><init>(Lcom/android/calendar/LocaleChangedService;)V

    iput-object v0, p0, Lcom/android/calendar/LocaleChangedService;->timezoneThread:Lcom/android/calendar/LocaleChangedService$TimezoneLoader;

    .line 38
    iget-object v0, p0, Lcom/android/calendar/LocaleChangedService;->timezoneThread:Lcom/android/calendar/LocaleChangedService$TimezoneLoader;

    invoke-virtual {v0}, Lcom/android/calendar/LocaleChangedService$TimezoneLoader;->start()V

    .line 39
    return-void
.end method
