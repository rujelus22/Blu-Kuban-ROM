.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;
.super Landroid/os/Handler;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1630
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$13;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1633
    return-void
.end method
