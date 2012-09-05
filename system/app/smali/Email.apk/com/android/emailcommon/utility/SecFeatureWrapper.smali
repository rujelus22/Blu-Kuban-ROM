.class public Lcom/android/emailcommon/utility/SecFeatureWrapper;
.super Ljava/lang/Object;
.source "SecFeatureWrapper.java"


# static fields
.field public static CARRIER_CODE:I

.field public static CARRIER_CODE_STRING:Ljava/lang/String;

.field static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static operator_features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/android/emailcommon/utility/SecFeatureWrapper;->CARRIER_CODE:I

    .line 32
    sput-object v1, Lcom/android/emailcommon/utility/SecFeatureWrapper;->CARRIER_CODE_STRING:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SecFeatureWrapper;->operator_features:Ljava/util/HashMap;

    .line 35
    sput-object v1, Lcom/android/emailcommon/utility/SecFeatureWrapper;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initInstance()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/emailcommon/utility/SecFeatureWrapper$1;

    invoke-direct {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .registers 8
    .parameter "feature"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, bEnabled:Z
    sget-object v2, Lcom/android/emailcommon/utility/SecFeatureWrapper;->operator_features:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 62
    sget-object v2, Lcom/android/emailcommon/utility/SecFeatureWrapper;->operator_features:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1c

    move v0, v3

    :goto_1a
    move v4, v0

    .line 76
    :cond_1b
    return v4

    :cond_1c
    move v0, v4

    .line 62
    goto :goto_1a

    .line 64
    :cond_1e
    sget-object v2, Lcom/android/emailcommon/utility/SecFeatureWrapper;->c:Ljava/lang/Class;

    if-eqz v2, :cond_1b

    .line 69
    :try_start_22
    sget-object v2, Lcom/android/emailcommon/utility/SecFeatureWrapper;->c:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_39

    move-result v0

    .line 73
    :goto_2d
    sget-object v2, Lcom/android/emailcommon/utility/SecFeatureWrapper;->operator_features:Ljava/util/HashMap;

    if-eqz v0, :cond_53

    :goto_31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 70
    :catch_39
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Email:SecFeatureWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .end local v1           #e:Ljava/lang/Exception;
    :cond_53
    move v3, v4

    .line 73
    goto :goto_31
.end method
