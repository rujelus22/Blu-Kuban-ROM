.class public interface abstract Lcom/google/wireless/webapps/Analytics$EventOrBuilder;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/google/wireless/webapps/Analytics$UniqueId;
.end method

.method public abstract getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
.end method

.method public abstract getCustomValueCount()I
.end method

.method public abstract getCustomValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDetails()Lcom/google/wireless/webapps/Analytics$EventDetails;
.end method

.method public abstract getEndTime()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEndTimeMsec()J
.end method

.method public abstract getEventType()Lcom/google/wireless/webapps/Analytics$Event$EventType;
.end method

.method public abstract getStartTime()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStartTimeMsec()J
.end method

.method public abstract getStep(I)Lcom/google/wireless/webapps/Analytics$Event$Step;
.end method

.method public abstract getStepCount()I
.end method

.method public abstract getStepList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasDetails()Z
.end method

.method public abstract hasEndTime()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasEndTimeMsec()Z
.end method

.method public abstract hasEventType()Z
.end method

.method public abstract hasStartTime()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasStartTimeMsec()Z
.end method
