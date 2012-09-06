.class final Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
.super Ljava/lang/Object;
.source "CircularLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public timestampMillis:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .parameter "timestampMillis"
    .parameter "message"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->timestampMillis:J

    .line 149
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->message:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public reset()Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    .registers 3

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->timestampMillis:J

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->message:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public set(JLjava/lang/String;)Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    .registers 4
    .parameter "timestampMillis"
    .parameter "message"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->timestampMillis:J

    .line 153
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->message:Ljava/lang/String;

    .line 154
    return-object p0
.end method
