.class Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;
.super Ljava/lang/Object;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataState"
.end annotation


# instance fields
.field changed:Z

.field data1:Ljava/lang/String;

.field data2:Ljava/lang/String;

.field data3:Ljava/lang/String;

.field dataId:J

.field exists:Z

.field mimetype:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$DataState;-><init>()V

    return-void
.end method
