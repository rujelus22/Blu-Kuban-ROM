.class Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactState"
.end annotation


# instance fields
.field final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;",
            ">;"
        }
    .end annotation
.end field

.field exists:Z

.field fullName:Ljava/lang/String;

.field lastUpdateTime:J

.field personId:Ljava/lang/String;

.field rawContactId:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;->data:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$RawContactState;-><init>()V

    return-void
.end method
