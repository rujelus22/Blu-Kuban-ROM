.class public Lcom/android/internal/telephony/cdma/sms/SCPTResult;
.super Ljava/lang/Object;
.source "SCPTResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;
    }
.end annotation


# static fields
.field public static final SMS_MAX_NUM_SERVICE_CATEGORIES:I = 0xa


# instance fields
.field public numberOfOccurance:I

.field public scptResultParam:[Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "CDMA"

    const-string v1, " in SCPTResult constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-array v0, v2, [Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->scptResultParam:[Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    .line 70
    const-string v0, "CDMA"

    const-string v1, " created the array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->numberOfOccurance:I

    .line 73
    return-void
.end method
