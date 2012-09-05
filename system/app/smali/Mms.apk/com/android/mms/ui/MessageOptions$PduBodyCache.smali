.class public Lcom/android/mms/ui/MessageOptions$PduBodyCache;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PduBodyCache"
.end annotation


# static fields
.field private static mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

.field private static mLastUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .registers 5
    .parameter "context"
    .parameter "contentUri"

    .prologue
    .line 1241
    sget-object v1, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1242
    sget-object v1, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    .line 1251
    :goto_a
    return-object v1

    .line 1245
    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    .line 1246
    sput-object p1, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->mLastUri:Landroid/net/Uri;
    :try_end_13
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_13} :catch_16

    .line 1251
    sget-object v1, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_a

    .line 1247
    :catch_16
    move-exception v0

    .line 1248
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/MessageOptions"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1249
    const/4 v1, 0x0

    goto :goto_a
.end method
