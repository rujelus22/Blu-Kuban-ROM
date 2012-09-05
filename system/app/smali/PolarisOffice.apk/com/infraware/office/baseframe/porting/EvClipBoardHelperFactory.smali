.class public Lcom/infraware/office/baseframe/porting/EvClipBoardHelperFactory;
.super Ljava/lang/Object;
.source "EvClipBoardHelperFactory.java"


# static fields
.field protected static final LOGCAT:Ljava/lang/String; = "EvClipboardHelperFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardHelper(Landroid/app/Activity;)Lcom/infraware/office/evengine/EvClipBoardHelper;
    .registers 5
    .parameter "activity"

    .prologue
    .line 12
    :try_start_0
    new-instance v2, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;-><init>(Landroid/app/Activity;)V
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_5} :catch_16

    .line 18
    :goto_5
    return-object v2

    .line 13
    :catch_6
    move-exception v0

    .line 14
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v2, "EvClipboardHelperFactory"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;-><init>(Landroid/app/Activity;)V

    goto :goto_5

    .line 16
    .end local v0           #e:Ljava/lang/NoClassDefFoundError;
    :catch_16
    move-exception v1

    .line 17
    .local v1, e2:Ljava/lang/NoSuchMethodError;
    const-string v2, "EvClipboardHelperFactory"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v2, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperStd;-><init>(Landroid/app/Activity;)V

    goto :goto_5
.end method
