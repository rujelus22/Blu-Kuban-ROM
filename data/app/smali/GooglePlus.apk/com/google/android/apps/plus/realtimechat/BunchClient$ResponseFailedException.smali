.class final Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;
.super Ljava/lang/Exception;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BunchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResponseFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1c31dd65d98a056fL


# instance fields
.field mStatus:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)V
    .registers 3
    .parameter
    .parameter "status"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;->this$0:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;->mStatus:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 149
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;->mStatus:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method
