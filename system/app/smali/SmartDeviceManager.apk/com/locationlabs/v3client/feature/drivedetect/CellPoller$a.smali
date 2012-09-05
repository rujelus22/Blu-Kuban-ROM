.class public final Lcom/locationlabs/v3client/feature/drivedetect/CellPoller$a;
.super Landroid/telephony/PhoneStateListener;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/locationlabs/v3client/feature/drivedetect/CellPoller;->a(Landroid/content/Context;Landroid/telephony/CellLocation;Landroid/app/PendingIntent;)V

    .line 185
    return-void
.end method
