.class Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleState"
.end annotation


# instance fields
.field changed:Z

.field circleId:Ljava/lang/String;

.field circleName:Ljava/lang/String;

.field exists:Z

.field groupId:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$CircleState;-><init>()V

    return-void
.end method
