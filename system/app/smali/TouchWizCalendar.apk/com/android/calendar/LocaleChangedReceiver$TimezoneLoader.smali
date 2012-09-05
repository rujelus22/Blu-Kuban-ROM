.class Lcom/android/calendar/LocaleChangedReceiver$TimezoneLoader;
.super Ljava/lang/Thread;
.source "LocaleChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/LocaleChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimezoneLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/LocaleChangedReceiver;


# direct methods
.method constructor <init>(Lcom/android/calendar/LocaleChangedReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calendar/LocaleChangedReceiver$TimezoneLoader;->this$0:Lcom/android/calendar/LocaleChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/LocaleChangedReceiver$TimezoneLoader;->this$0:Lcom/android/calendar/LocaleChangedReceiver;

    #getter for: Lcom/android/calendar/LocaleChangedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/LocaleChangedReceiver;->access$000(Lcom/android/calendar/LocaleChangedReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/TimezoneAdapter;->reloadFromResources(Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method
