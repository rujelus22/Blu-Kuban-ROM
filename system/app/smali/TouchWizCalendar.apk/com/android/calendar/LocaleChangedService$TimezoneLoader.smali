.class Lcom/android/calendar/LocaleChangedService$TimezoneLoader;
.super Ljava/lang/Thread;
.source "LocaleChangedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/LocaleChangedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimezoneLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/LocaleChangedService;


# direct methods
.method constructor <init>(Lcom/android/calendar/LocaleChangedService;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/calendar/LocaleChangedService$TimezoneLoader;->this$0:Lcom/android/calendar/LocaleChangedService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/LocaleChangedService$TimezoneLoader;->this$0:Lcom/android/calendar/LocaleChangedService;

    #getter for: Lcom/android/calendar/LocaleChangedService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/LocaleChangedService;->access$000(Lcom/android/calendar/LocaleChangedService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/TimezoneAdapter;->reloadFromResources(Landroid/content/res/Resources;)V

    .line 54
    return-void
.end method
