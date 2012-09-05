.class Lcom/sec/android/app/twlauncher/Widget;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "Widget.java"


# instance fields
.field layoutResource:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    return-void
.end method

.method static makeSearch()Lcom/sec/android/app/twlauncher/Widget;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/sec/android/app/twlauncher/Widget;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/Widget;-><init>()V

    .line 27
    .local v0, w:Lcom/sec/android/app/twlauncher/Widget;
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 28
    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 29
    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 30
    const v1, 0x7f03001b

    iput v1, v0, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    .line 31
    return-object v0
.end method
