.class public interface abstract Lcom/google/android/apps/plus/views/StreamOneUpListener;
.super Ljava/lang/Object;
.source "StreamOneUpListener.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;
.implements Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;


# virtual methods
.method public abstract onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
.end method

.method public abstract onPlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V
.end method

.method public abstract onSkyjamBuyClick(Ljava/lang/String;)V
.end method

.method public abstract onSkyjamListenClick(Ljava/lang/String;)V
.end method
