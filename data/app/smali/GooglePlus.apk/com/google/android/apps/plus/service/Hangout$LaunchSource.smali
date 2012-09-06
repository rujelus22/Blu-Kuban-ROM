.class public final enum Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
.super Ljava/lang/Enum;
.source "Hangout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/Hangout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/service/Hangout$LaunchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Ding:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Event:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Messenger:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum None:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Stream:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Transfer:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

.field public static final enum Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->None:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 33
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Stream"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Stream:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 34
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Url"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 35
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "MissedCall"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 36
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Ring"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Ding"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ding:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Creation"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 39
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Messenger"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Messenger:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Transfer"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Transfer:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 41
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const-string v1, "Event"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Event:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->None:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Stream:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ding:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Messenger:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Transfer:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Event:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    return-object v0
.end method
