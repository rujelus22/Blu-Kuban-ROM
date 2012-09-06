.class interface abstract Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;
.super Ljava/lang/Object;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnMessageLoadHandler"
.end annotation


# virtual methods
.method public abstract onLoadFailed()V
.end method

.method public abstract onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end method
