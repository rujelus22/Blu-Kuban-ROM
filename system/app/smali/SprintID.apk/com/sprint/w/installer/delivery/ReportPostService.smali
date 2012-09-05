.class public Lcom/sprint/w/installer/delivery/ReportPostService;
.super Landroid/app/Service;
.source "ReportPostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;
    }
.end annotation


# static fields
.field public static final EXTRA_FORCE_UPLOAD:Ljava/lang/String; = "force"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, override:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "force"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    :cond_12
    new-instance v1, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;

    invoke-direct {v1, p0, p0, p3, v0}, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;-><init>(Lcom/sprint/w/installer/delivery/ReportPostService;Landroid/content/Context;IZ)V

    invoke-virtual {v1}, Lcom/sprint/w/installer/delivery/ReportPostService$ReportPostThread;->start()V

    .line 44
    const/4 v1, 0x3

    return v1
.end method
