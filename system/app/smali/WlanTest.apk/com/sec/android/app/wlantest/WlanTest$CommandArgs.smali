.class public final Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;
.super Ljava/lang/Object;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CommandArgs"
.end annotation


# instance fields
.field public cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

.field public data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest$DutId;->INVALID:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->cmdId:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;->data:Ljava/lang/String;

    .line 145
    return-void
.end method
