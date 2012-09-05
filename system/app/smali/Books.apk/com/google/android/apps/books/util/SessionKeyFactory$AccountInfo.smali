.class Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field public accountId:J

.field public sessionKeyBlob:[B

.field public sessionKeyVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/util/SessionKeyFactory$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;-><init>()V

    return-void
.end method
