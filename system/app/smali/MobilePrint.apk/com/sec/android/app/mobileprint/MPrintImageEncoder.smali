.class public final Lcom/sec/android/app/mobileprint/MPrintImageEncoder;
.super Ljava/lang/Object;
.source "MPrintImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;,
        Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static final encode(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "appContext"
    .parameter "callback"
    .parameter "subject"
    .parameter "body"
    .parameter "orientation"

    .prologue
    .line 46
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;-><init>(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->start()V

    .line 47
    return-void
.end method
