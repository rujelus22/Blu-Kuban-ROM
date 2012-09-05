.class Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingtoneMeta"
.end annotation


# instance fields
.field isAlarm:Z

.field isDefaultAlarm:Z

.field isDefaultNotification:Z

.field isDefaultRingtone:Z

.field isNotification:Z

.field isRingtone:Z

.field mimeType:Ljava/lang/String;

.field path:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
