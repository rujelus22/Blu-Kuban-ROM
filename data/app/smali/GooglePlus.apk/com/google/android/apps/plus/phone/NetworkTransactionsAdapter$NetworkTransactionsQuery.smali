.class public interface abstract Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter$NetworkTransactionsQuery;
.super Ljava/lang/Object;
.source "NetworkTransactionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkTransactionsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "recv"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "process_duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "req_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exception"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/NetworkTransactionsAdapter$NetworkTransactionsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
