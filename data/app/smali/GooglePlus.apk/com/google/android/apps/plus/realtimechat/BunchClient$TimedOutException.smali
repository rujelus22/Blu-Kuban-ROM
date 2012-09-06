.class final Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;
.super Ljava/lang/Exception;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimedOutException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3067ff96f8cf464eL


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    return-void
.end method
