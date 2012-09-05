.class Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# instance fields
.field activityId:Ljava/lang/String;

.field changed:Z

.field created:J

.field exists:Z

.field lastModified:J

.field rawContactId:J

.field streamItemId:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$ActivityState;-><init>()V

    return-void
.end method
