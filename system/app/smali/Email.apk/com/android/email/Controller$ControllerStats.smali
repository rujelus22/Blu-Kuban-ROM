.class public Lcom/android/email/Controller$ControllerStats;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerStats"
.end annotation


# static fields
.field private static syncStats:Lcom/android/email/mail/transport/DiscourseLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6862
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6860
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump()V
    .registers 2

    .prologue
    .line 6869
    sget-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz v0, :cond_11

    .line 6870
    const-string v0, "ControllerStats"

    const-string v1, "SYNC Statistics ::"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6871
    sget-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse(Z)V

    .line 6873
    :cond_11
    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 6865
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(IZ)V

    sput-object v0, Lcom/android/email/Controller$ControllerStats;->syncStats:Lcom/android/email/mail/transport/DiscourseLogger;

    .line 6866
    return-void
.end method
